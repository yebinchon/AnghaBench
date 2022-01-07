; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfileop.c_test_sh_new_link_info.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfileop.c_test_sh_new_link_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"nosuchfile.txt\00\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"testdir2\00\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"SHGetNewLinkInfoA succeeded\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"mustcopy should be FALSE\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"test1.txt\00\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"nosuchdir\00\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"SHGetNewLinkInfoA failed, err=%i\0A\00", align 1
@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@NORM_IGNORECASE = common dso_local global i32 0, align 4
@CSTR_EQUAL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"%s does not start with %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c".lnk\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"%s does not end with .lnk\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"%s and %s are the same\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_sh_new_link_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_sh_new_link_info() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = load i32, i32* @TRUE, align 4
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %22 = call i32 @set_curr_dir_path(i8* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @set_curr_dir_path(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @SHGetNewLinkInfoA(i8* %12, i8* %15, i8* %18, i32* %2, i32 0)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @FALSE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %0
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @lstrlenA(i8* %18)
  %31 = add nsw i32 %30, 1
  %32 = icmp eq i32 %29, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @broken(i32 %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %28, %0
  %37 = phi i1 [ true, %0 ], [ %35, %28 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @FALSE, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %45 = call i32 @set_curr_dir_path(i8* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %46 = call i32 @set_curr_dir_path(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %47 = call i32 @SHGetNewLinkInfoA(i8* %12, i8* %15, i8* %18, i32* %2, i32 0)
  store i32 %47, i32* %1, align 4
  %48 = load i32, i32* %1, align 4
  %49 = load i32, i32* @TRUE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %1, align 4
  %53 = call i32 @lstrlenA(i8* %18)
  %54 = add nsw i32 %53, 1
  %55 = icmp eq i32 %52, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @broken(i32 %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %51, %36
  %60 = phi i1 [ true, %36 ], [ %58, %51 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 (...) @GetLastError()
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @FALSE, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %69 = call i32 @set_curr_dir_path(i8* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %70 = call i32 @set_curr_dir_path(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %71 = call i32 @SHGetNewLinkInfoA(i8* %12, i8* %15, i8* %18, i32* %2, i32 0)
  store i32 %71, i32* %1, align 4
  %72 = load i32, i32* %1, align 4
  %73 = load i32, i32* @TRUE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %83, label %75

75:                                               ; preds = %59
  %76 = load i32, i32* %1, align 4
  %77 = call i32 @lstrlenA(i8* %18)
  %78 = add nsw i32 %77, 1
  %79 = icmp eq i32 %76, %78
  %80 = zext i1 %79 to i32
  %81 = call i64 @broken(i32 %80)
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %75, %59
  %84 = phi i1 [ true, %59 ], [ %82, %75 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 (...) @GetLastError()
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %2, align 4
  %89 = load i32, i32* @FALSE, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %94 = load i32, i32* @NORM_IGNORECASE, align 4
  %95 = call i32 @lstrlenA(i8* %15)
  %96 = call i32 @lstrlenA(i8* %15)
  %97 = call i64 @CompareStringA(i32 %93, i32 %94, i8* %15, i32 %95, i8* %18, i32 %96)
  %98 = load i64, i64* @CSTR_EQUAL, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %18, i8* %15)
  %102 = call i32 @lstrlenA(i8* %18)
  %103 = icmp sgt i32 %102, 4
  br i1 %103, label %104, label %111

104:                                              ; preds = %83
  %105 = call i32 @lstrlenA(i8* %18)
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %18, i64 %106
  %108 = getelementptr inbounds i8, i8* %107, i64 -4
  %109 = call i64 @lstrcmpiA(i8* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %110 = icmp eq i64 %109, 0
  br label %111

111:                                              ; preds = %104, %83
  %112 = phi i1 [ false, %83 ], [ %110, %104 ]
  %113 = zext i1 %112 to i32
  %114 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* %18)
  %115 = call i32 @createTestFile(i8* %18)
  %116 = call i32 @SHGetNewLinkInfoA(i8* %12, i8* %15, i8* %21, i32* %2, i32 0)
  store i32 %116, i32* %1, align 4
  %117 = load i32, i32* %1, align 4
  %118 = load i32, i32* @TRUE, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %128, label %120

120:                                              ; preds = %111
  %121 = load i32, i32* %1, align 4
  %122 = call i32 @lstrlenA(i8* %21)
  %123 = add nsw i32 %122, 1
  %124 = icmp eq i32 %121, %123
  %125 = zext i1 %124 to i32
  %126 = call i64 @broken(i32 %125)
  %127 = icmp ne i64 %126, 0
  br label %128

128:                                              ; preds = %120, %111
  %129 = phi i1 [ true, %111 ], [ %127, %120 ]
  %130 = zext i1 %129 to i32
  %131 = call i32 (...) @GetLastError()
  %132 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %2, align 4
  %134 = load i32, i32* @FALSE, align 4
  %135 = icmp eq i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %138 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %139 = load i32, i32* @NORM_IGNORECASE, align 4
  %140 = call i32 @lstrlenA(i8* %15)
  %141 = call i32 @lstrlenA(i8* %15)
  %142 = call i64 @CompareStringA(i32 %138, i32 %139, i8* %15, i32 %140, i8* %21, i32 %141)
  %143 = load i64, i64* @CSTR_EQUAL, align 8
  %144 = icmp eq i64 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %21, i8* %15)
  %147 = call i32 @lstrlenA(i8* %21)
  %148 = icmp sgt i32 %147, 4
  br i1 %148, label %149, label %156

149:                                              ; preds = %128
  %150 = call i32 @lstrlenA(i8* %21)
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %21, i64 %151
  %153 = getelementptr inbounds i8, i8* %152, i64 -4
  %154 = call i64 @lstrcmpiA(i8* %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %155 = icmp eq i64 %154, 0
  br label %156

156:                                              ; preds = %149, %128
  %157 = phi i1 [ false, %128 ], [ %155, %149 ]
  %158 = zext i1 %157 to i32
  %159 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* %21)
  %160 = call i64 @lstrcmpiA(i8* %18, i8* %21)
  %161 = icmp ne i64 %160, 0
  %162 = zext i1 %161 to i32
  %163 = call i32 (i32, i8*, ...) @ok(i32 %162, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %18, i8* %21)
  %164 = call i32 @DeleteFileA(i8* %18)
  %165 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %165)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @set_curr_dir_path(i8*, i8*) #2

declare dso_local i32 @SHGetNewLinkInfoA(i8*, i8*, i8*, i32*, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @lstrlenA(i8*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i64 @CompareStringA(i32, i32, i8*, i32, i8*, i32) #2

declare dso_local i64 @lstrcmpiA(i8*, i8*) #2

declare dso_local i32 @createTestFile(i8*) #2

declare dso_local i32 @DeleteFileA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
