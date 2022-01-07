; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_md2.c_md2_done.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_md2.c_md2_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32, i32 }

@CRYPT_INVALID_ARG = common dso_local global i32 0, align 4
@CRYPT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md2_done(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = icmp uge i64 %11, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @CRYPT_INVALID_ARG, align 4
  store i32 %14, i32* %3, align 4
  br label %59

15:                                               ; preds = %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 16, %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %7, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %36, %15
  %26 = load i64, i64* %6, align 8
  %27 = icmp ult i64 %26, 16
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i64, i64* %7, align 8
  %30 = trunc i64 %29 to i8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8 %30, i8* %35, align 1
  br label %36

36:                                               ; preds = %28
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %6, align 8
  br label %25

39:                                               ; preds = %25
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = call i32 @md2_compress(%struct.TYPE_5__* %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = call i32 @md2_update_chksum(%struct.TYPE_5__* %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @memcpy(i8* %46, i32 %49, i32 16)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = call i32 @md2_compress(%struct.TYPE_5__* %51)
  %53 = load i8*, i8** %5, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @memcpy(i8* %53, i32 %56, i32 16)
  %58 = load i32, i32* @CRYPT_OK, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %39, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @md2_compress(%struct.TYPE_5__*) #1

declare dso_local i32 @md2_update_chksum(%struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
