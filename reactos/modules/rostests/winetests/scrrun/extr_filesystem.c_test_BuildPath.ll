; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_BuildPath.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_BuildPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buildpath_test = type { i8*, i8*, i8* }

@buildpath_data = common dso_local global %struct.buildpath_test* null, align 8
@fs3 = common dso_local global i32 0, align 4
@E_POINTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"%d: got 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"%d: got wrong path %s, expected %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_BuildPath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_BuildPath() #0 {
  %1 = alloca %struct.buildpath_test*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = load %struct.buildpath_test*, %struct.buildpath_test** @buildpath_data, align 8
  store %struct.buildpath_test* %8, %struct.buildpath_test** %1, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* @fs3, align 4
  %10 = call i32 @IFileSystem3_BuildPath(i32 %9, i64* null, i64* null, i64** null)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @E_POINTER, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i64* inttoptr (i64 3735928559 to i64*), i64** %2, align 8
  %17 = load i32, i32* @fs3, align 4
  %18 = call i32 @IFileSystem3_BuildPath(i32 %17, i64* null, i64* null, i64** %2)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @S_OK, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i64*, i64** %2, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load i64*, i64** %2, align 8
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64* %29)
  %31 = load i64*, i64** %2, align 8
  %32 = call i32 @SysFreeString(i64* %31)
  store i64* inttoptr (i64 3735928559 to i64*), i64** %2, align 8
  %33 = call i64* @bstr_from_str(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i64* %33, i64** %3, align 8
  %34 = load i32, i32* @fs3, align 4
  %35 = load i64*, i64** %3, align 8
  %36 = call i32 @IFileSystem3_BuildPath(i32 %34, i64* %35, i64* null, i64** %2)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @S_OK, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %4, align 4
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i64*, i64** %2, align 8
  %44 = load i64*, i64** %3, align 8
  %45 = call i32 @lstrcmpW(i64* %43, i64* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load i64*, i64** %2, align 8
  %50 = call i32 @wine_dbgstr_w(i64* %49)
  %51 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load i64*, i64** %2, align 8
  %53 = call i32 @SysFreeString(i64* %52)
  %54 = load i64*, i64** %3, align 8
  %55 = call i32 @SysFreeString(i64* %54)
  store i64* inttoptr (i64 3735928559 to i64*), i64** %2, align 8
  %56 = call i64* @bstr_from_str(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i64* %56, i64** %3, align 8
  %57 = load i32, i32* @fs3, align 4
  %58 = load i64*, i64** %3, align 8
  %59 = call i32 @IFileSystem3_BuildPath(i32 %57, i64* null, i64* %58, i64** %2)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @S_OK, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %4, align 4
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i64*, i64** %2, align 8
  %67 = load i64*, i64** %3, align 8
  %68 = call i32 @lstrcmpW(i64* %66, i64* %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = load i64*, i64** %2, align 8
  %73 = call i32 @wine_dbgstr_w(i64* %72)
  %74 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load i64*, i64** %2, align 8
  %76 = call i32 @SysFreeString(i64* %75)
  %77 = load i64*, i64** %3, align 8
  %78 = call i32 @SysFreeString(i64* %77)
  br label %79

79:                                               ; preds = %126, %0
  %80 = load %struct.buildpath_test*, %struct.buildpath_test** %1, align 8
  %81 = getelementptr inbounds %struct.buildpath_test, %struct.buildpath_test* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %137

84:                                               ; preds = %79
  store i64* null, i64** %2, align 8
  %85 = load %struct.buildpath_test*, %struct.buildpath_test** %1, align 8
  %86 = getelementptr inbounds %struct.buildpath_test, %struct.buildpath_test* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i64* @bstr_from_str(i8* %87)
  store i64* %88, i64** %3, align 8
  %89 = load %struct.buildpath_test*, %struct.buildpath_test** %1, align 8
  %90 = getelementptr inbounds %struct.buildpath_test, %struct.buildpath_test* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i64* @bstr_from_str(i8* %91)
  store i64* %92, i64** %6, align 8
  %93 = load %struct.buildpath_test*, %struct.buildpath_test** %1, align 8
  %94 = getelementptr inbounds %struct.buildpath_test, %struct.buildpath_test* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = call i64* @bstr_from_str(i8* %95)
  store i64* %96, i64** %7, align 8
  %97 = load i32, i32* @fs3, align 4
  %98 = load i64*, i64** %3, align 8
  %99 = load i64*, i64** %6, align 8
  %100 = call i32 @IFileSystem3_BuildPath(i32 %97, i64* %98, i64* %99, i64** %2)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @S_OK, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %4, align 4
  %107 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @S_OK, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %84
  %112 = load i64*, i64** %2, align 8
  %113 = load i64*, i64** %7, align 8
  %114 = call i32 @lstrcmpW(i64* %112, i64* %113)
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %5, align 4
  %119 = load i64*, i64** %2, align 8
  %120 = call i32 @wine_dbgstr_w(i64* %119)
  %121 = load i64*, i64** %7, align 8
  %122 = call i32 @wine_dbgstr_w(i64* %121)
  %123 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %118, i32 %120, i32 %122)
  %124 = load i64*, i64** %2, align 8
  %125 = call i32 @SysFreeString(i64* %124)
  br label %126

126:                                              ; preds = %111, %84
  %127 = load i64*, i64** %3, align 8
  %128 = call i32 @SysFreeString(i64* %127)
  %129 = load i64*, i64** %6, align 8
  %130 = call i32 @SysFreeString(i64* %129)
  %131 = load i64*, i64** %7, align 8
  %132 = call i32 @SysFreeString(i64* %131)
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  %135 = load %struct.buildpath_test*, %struct.buildpath_test** %1, align 8
  %136 = getelementptr inbounds %struct.buildpath_test, %struct.buildpath_test* %135, i32 1
  store %struct.buildpath_test* %136, %struct.buildpath_test** %1, align 8
  br label %79

137:                                              ; preds = %79
  ret void
}

declare dso_local i32 @IFileSystem3_BuildPath(i32, i64*, i64*, i64**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SysFreeString(i64*) #1

declare dso_local i64* @bstr_from_str(i8*) #1

declare dso_local i32 @lstrcmpW(i64*, i64*) #1

declare dso_local i32 @wine_dbgstr_w(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
