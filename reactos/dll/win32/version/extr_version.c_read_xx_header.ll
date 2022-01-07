; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/version/extr_version.c_read_xx_header.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/version/extr_version.c_read_xx_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@IMAGE_DOS_SIGNATURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@IMAGE_OS2_SIGNATURE = common dso_local global i32 0, align 4
@IMAGE_NT_SIGNATURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Can't handle %s files.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @read_xx_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_xx_header(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca [3 x i8], align 1
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @SEEK_SET, align 4
  %8 = call i32 @LZSeek(i32 %6, i32 0, i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = bitcast %struct.TYPE_3__* %4 to i8*
  %11 = call i32 @LZRead(i32 %9, i8* %10, i32 16)
  %12 = sext i32 %11 to i64
  %13 = icmp ne i64 16, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %78

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IMAGE_DOS_SIGNATURE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = call i32 @memcmp(%struct.TYPE_3__* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %78

24:                                               ; preds = %20
  %25 = bitcast %struct.TYPE_3__* %4 to i32*
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, -17958194
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = bitcast %struct.TYPE_3__* %4 to i32*
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, -822415874
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %24
  store i32 1, i32* %2, align 4
  br label %78

33:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %78

34:                                               ; preds = %15
  %35 = load i32, i32* %3, align 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SEEK_SET, align 4
  %39 = call i32 @LZSeek(i32 %35, i32 %37, i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %42 = call i32 @LZRead(i32 %40, i8* %41, i32 2)
  %43 = icmp ne i32 2, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %78

45:                                               ; preds = %34
  %46 = load i32, i32* %3, align 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SEEK_SET, align 4
  %50 = call i32 @LZSeek(i32 %46, i32 %48, i32 %49)
  %51 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 78
  br i1 %54, label %55, label %62

55:                                               ; preds = %45
  %56 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 69
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @IMAGE_OS2_SIGNATURE, align 4
  store i32 %61, i32* %2, align 4
  br label %78

62:                                               ; preds = %55, %45
  %63 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 80
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 69
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @IMAGE_NT_SIGNATURE, align 4
  store i32 %73, i32* %2, align 4
  br label %78

74:                                               ; preds = %67, %62
  %75 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 2
  store i8 0, i8* %75, align 1
  %76 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %77 = call i32 @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %72, %60, %44, %33, %32, %23, %14
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @LZSeek(i32, i32, i32) #1

declare dso_local i32 @LZRead(i32, i8*, i32) #1

declare dso_local i32 @memcmp(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @WARN(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
