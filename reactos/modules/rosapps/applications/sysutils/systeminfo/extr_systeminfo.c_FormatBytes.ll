; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/systeminfo/extr_systeminfo.c_FormatBytes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/systeminfo/extr_systeminfo.c_FormatBytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i64, i64, i64 }

@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 32, i32 0], align 4
@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@BUFFER_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i32] [i32 32, i32 77, i32 66, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @FormatBytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FormatBytes(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [32 x i32], align 16
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = udiv i32 %9, 1048576
  %11 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %12 = call i32 @_itow(i32 %10, i32* %11, i32 10)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 3, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i8* bitcast ([1 x i32]* @.str to i8*), i8** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i8* bitcast ([2 x i32]* @.str.1 to i8*), i8** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %20 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %21 = load i32, i32* %4, align 4
  %22 = load i64, i64* @BUFFER_SIZE, align 8
  %23 = sub nsw i64 %22, 3
  %24 = call i32 @GetNumberFormatW(i32 %19, i32 0, i32* %20, %struct.TYPE_3__* %7, i32 %21, i64 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  %29 = add i32 %28, -1
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add i32 %31, %32
  %34 = call i32 @wcscpy(i32 %33, i8* bitcast ([4 x i32]* @.str.2 to i8*))
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @_itow(i32, i32*, i32) #1

declare dso_local i32 @GetNumberFormatW(i32, i32, i32*, %struct.TYPE_3__*, i32, i64) #1

declare dso_local i32 @wcscpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
