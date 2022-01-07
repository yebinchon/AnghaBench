; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_read_xx_header.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_read_xx_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@IMAGE_DOS_SIGNATURE = common dso_local global i64 0, align 8
@IMAGE_OS2_SIGNATURE = common dso_local global i32 0, align 4
@IMAGE_NT_SIGNATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Can't handle %s files.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @read_xx_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_xx_header(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__, align 8
  %5 = alloca [3 x i8], align 1
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @SEEK_SET, align 4
  %8 = call i32 @LZSeek(i32 %6, i32 0, i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = bitcast %struct.TYPE_2__* %4 to i8*
  %11 = call i32 @LZRead(i32 %9, i8* %10, i32 16)
  %12 = sext i32 %11 to i64
  %13 = icmp ne i64 16, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IMAGE_DOS_SIGNATURE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %65

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SEEK_SET, align 4
  %26 = call i32 @LZSeek(i32 %22, i32 %24, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %29 = call i32 @LZRead(i32 %27, i8* %28, i32 2)
  %30 = icmp ne i32 2, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %65

32:                                               ; preds = %21
  %33 = load i32, i32* %3, align 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SEEK_SET, align 4
  %37 = call i32 @LZSeek(i32 %33, i32 %35, i32 %36)
  %38 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 78
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 69
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @IMAGE_OS2_SIGNATURE, align 4
  store i32 %48, i32* %2, align 4
  br label %65

49:                                               ; preds = %42, %32
  %50 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 80
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 69
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @IMAGE_NT_SIGNATURE, align 4
  store i32 %60, i32* %2, align 4
  br label %65

61:                                               ; preds = %54, %49
  %62 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 2
  store i8 0, i8* %62, align 1
  %63 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %64 = call i32 @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %59, %47, %31, %20, %14
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @LZSeek(i32, i32, i32) #1

declare dso_local i32 @LZRead(i32, i8*, i32) #1

declare dso_local i32 @WARN(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
