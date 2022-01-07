; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c__test_file_access.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c__test_file_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.access_res = type { i32, i32, i64 }

@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
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
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.access_res* %1, %struct.access_res** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %133, %3
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %136

17:                                               ; preds = %14
  %18 = load i32, i32* %11, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %11, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @GENERIC_READ, align 4
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @GENERIC_WRITE, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32, i32* %11, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* @GENERIC_READ, align 4
  %36 = load i32, i32* @GENERIC_WRITE, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %34, %31
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %129, %38
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 4
  br i1 %41, label %42, label %132

42:                                               ; preds = %39
  %43 = load %struct.access_res*, %struct.access_res** %5, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.access_res, %struct.access_res* %43, i64 %45
  %47 = getelementptr inbounds %struct.access_res, %struct.access_res* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %129

51:                                               ; preds = %42
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @FILE_SHARE_READ, align 4
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i32, i32* %12, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @FILE_SHARE_WRITE, align 4
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i32, i32* %12, align 4
  %67 = icmp eq i32 %66, 3
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* @FILE_SHARE_READ, align 4
  %70 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %71 = or i32 %69, %70
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %68, %65
  %73 = call i32 @SetLastError(i32 -559038737)
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @OPEN_EXISTING, align 4
  %78 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %79 = call i64 @CreateFileA(i32 %74, i32 %75, i32 %76, i32* null, i32 %77, i32 %78, i32 0)
  store i64 %79, i64* %10, align 8
  %80 = call i32 (...) @GetLastError()
  store i32 %80, i32* %9, align 4
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %83 = icmp ne i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load %struct.access_res*, %struct.access_res** %5, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.access_res, %struct.access_res* %85, i64 %87
  %89 = getelementptr inbounds %struct.access_res, %struct.access_res* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %84, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.access_res*, %struct.access_res** %5, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.access_res, %struct.access_res* %95, i64 %97
  %99 = getelementptr inbounds %struct.access_res, %struct.access_res* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %103 = icmp ne i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @ok(i32 %92, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %94, i32 %100, i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.access_res*, %struct.access_res** %5, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.access_res, %struct.access_res* %107, i64 %109
  %111 = getelementptr inbounds %struct.access_res, %struct.access_res* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %106, %112
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.access_res*, %struct.access_res** %5, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.access_res, %struct.access_res* %117, i64 %119
  %121 = getelementptr inbounds %struct.access_res, %struct.access_res* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @ok(i32 %114, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %116, i32 %122, i32 %123)
  %125 = load i64, i64* %10, align 8
  %126 = call i32 @CloseHandle(i64 %125)
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %13, align 4
  br label %129

129:                                              ; preds = %72, %50
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %39

132:                                              ; preds = %39
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  br label %14

136:                                              ; preds = %14
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @CreateFileA(i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
