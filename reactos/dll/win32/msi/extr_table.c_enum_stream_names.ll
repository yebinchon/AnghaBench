; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_enum_stream_names.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_enum_stream_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [21 x i8] c"stream %2d -> %s %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enum_stream_names(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [64 x i32], align 16
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @IStorage_EnumElements(i32* %9, i32 0, i32* null, i32 0, i32** %3)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @FAILED(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %46

15:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %16

16:                                               ; preds = %15, %26
  store i64 0, i64* %7, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @IEnumSTATSTG_Next(i32* %17, i32 1, %struct.TYPE_3__* %5, i64* %7)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @FAILED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %16
  br label %43

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %30 = call i32 @decode_streamname(i32* %28, i32* %29)
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @debugstr_w(i32* %33)
  %35 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %36 = call i32 @debugstr_w(i32* %35)
  %37 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %31, i32 %34, i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @CoTaskMemFree(i32* %39)
  %41 = load i64, i64* %6, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %6, align 8
  br label %16

43:                                               ; preds = %25
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @IEnumSTATSTG_Release(i32* %44)
  br label %46

46:                                               ; preds = %43, %14
  ret void
}

declare dso_local i32 @IStorage_EnumElements(i32*, i32, i32*, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IEnumSTATSTG_Next(i32*, i32, %struct.TYPE_3__*, i64*) #1

declare dso_local i32 @decode_streamname(i32*, i32*) #1

declare dso_local i32 @TRACE(i8*, i64, i32, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i32 @IEnumSTATSTG_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
