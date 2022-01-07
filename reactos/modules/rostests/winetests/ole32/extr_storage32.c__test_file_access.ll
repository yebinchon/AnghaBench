; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c__test_file_access.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c__test_file_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.access_res = type { i32, i32, i64 }

@access_modes = common dso_local global i32* null, align 8
@share_modes = common dso_local global i32* null, align 8
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"(%d, handle, %d): Expected %d, got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"(%d, lasterr, %d): Expected %d, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.access_res*, i32)* @_test_file_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_test_file_access(i32 %0, %struct.access_res* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.access_res*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.access_res* %1, %struct.access_res** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %109, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** @access_modes, align 8
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %112

17:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %105, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** @share_modes, align 8
  %21 = call i32 @ARRAY_SIZE(i32* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %108

23:                                               ; preds = %18
  %24 = load %struct.access_res*, %struct.access_res** %5, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.access_res, %struct.access_res* %24, i64 %26
  %28 = getelementptr inbounds %struct.access_res, %struct.access_res* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %105

32:                                               ; preds = %23
  %33 = call i32 @SetLastError(i32 -559038737)
  %34 = load i32, i32* %4, align 4
  %35 = load i32*, i32** @access_modes, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** @share_modes, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @OPEN_EXISTING, align 4
  %46 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %47 = call i64 @CreateFileA(i32 %34, i32 %39, i32 %44, i32* null, i32 %45, i32 %46, i32 0)
  store i64 %47, i64* %11, align 8
  %48 = call i32 (...) @GetLastError()
  store i32 %48, i32* %10, align 4
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %51 = icmp ne i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load %struct.access_res*, %struct.access_res** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.access_res, %struct.access_res* %53, i64 %55
  %57 = getelementptr inbounds %struct.access_res, %struct.access_res* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %52, %58
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.access_res*, %struct.access_res** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.access_res, %struct.access_res* %63, i64 %65
  %67 = getelementptr inbounds %struct.access_res, %struct.access_res* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %71 = icmp ne i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62, i32 %68, i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.access_res*, %struct.access_res** %5, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.access_res, %struct.access_res* %75, i64 %77
  %79 = getelementptr inbounds %struct.access_res, %struct.access_res* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %74, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %32
  %83 = load i32, i32* %10, align 4
  %84 = icmp eq i32 %83, -559038737
  %85 = zext i1 %84 to i32
  %86 = call i64 @broken(i32 %85)
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %82, %32
  %89 = phi i1 [ true, %32 ], [ %87, %82 ]
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.access_res*, %struct.access_res** %5, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.access_res, %struct.access_res* %93, i64 %95
  %97 = getelementptr inbounds %struct.access_res, %struct.access_res* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %92, i32 %98, i32 %99)
  %101 = load i64, i64* %11, align 8
  %102 = call i32 @CloseHandle(i64 %101)
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %88, %31
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %18

108:                                              ; preds = %18
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %12

112:                                              ; preds = %12
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @CreateFileA(i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
