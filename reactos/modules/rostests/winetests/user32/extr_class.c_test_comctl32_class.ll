; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_class.c_test_comctl32_class.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_class.c_test_comctl32_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"comctl32_class.manifest\00", align 1
@comctl32_manifest = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to delete manifest file, error %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"comctl32\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"comctl32 already loaded\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to activate context.\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"Module loaded during context activation. Skipping tests.\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"GetClassInfoA failed for %s\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"GetClassInfoW failed for %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"comctl32 not loaded\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"comctl32 still loaded\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"failed to create window for %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Failed to deactivate context.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_comctl32_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_comctl32_class(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [20 x i32], align 16
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 33
  br i1 %17, label %18, label %136

18:                                               ; preds = %1
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %2, align 8
  %25 = udiv i64 %20, 1
  %26 = trunc i64 %25 to i32
  %27 = call i32 @GetTempPathA(i32 %26, i8* %22)
  %28 = call i32 @strcat(i8* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @comctl32_manifest, align 4
  %30 = call i32 @create_manifest_file(i8* %22, i32 %29)
  %31 = call i32 @create_test_actctx(i8* %22)
  store i32 %31, i32* %12, align 4
  %32 = call i32 @DeleteFileA(i8* %22)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (...) @GetLastError()
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = call i32* @GetModuleHandleA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = icmp ne i32* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @ActivateActCtx(i32 %42, i32* %11)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %46 = call i32* @GetModuleHandleA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32* %46, i32** %6, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %18
  %50 = load i32*, i32** %6, align 8
  %51 = icmp ne i32* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i64 @broken(i32 %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %49, %18
  %56 = phi i1 [ true, %18 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32*, i32** %6, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = call i32 @win_skip(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  br label %128

63:                                               ; preds = %55
  %64 = load i8*, i8** %2, align 8
  %65 = call i32 @GetClassInfoA(i32 0, i8* %64, i32* %3)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i64 @broken(i32 %72)
  %74 = icmp ne i64 %73, 0
  br label %75

75:                                               ; preds = %68, %63
  %76 = phi i1 [ true, %63 ], [ %74, %68 ]
  %77 = zext i1 %76 to i32
  %78 = load i8*, i8** %2, align 8
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %78)
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %75
  br label %128

83:                                               ; preds = %75
  %84 = load i32, i32* @CP_ACP, align 4
  %85 = load i8*, i8** %2, align 8
  %86 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %87 = call i32 @MultiByteToWideChar(i32 %84, i32 0, i8* %85, i32 -1, i32* %86, i32 20)
  %88 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %89 = call i32 @GetClassInfoW(i32 0, i32* %88, i32* %4)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i8*, i8** %2, align 8
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %91)
  %93 = call i32* @GetModuleHandleA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32* %93, i32** %6, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = icmp ne i32* %94, null
  %96 = zext i1 %95 to i32
  %97 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @FreeLibrary(i32* %98)
  %100 = call i32* @GetModuleHandleA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32* %100, i32** %6, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %83
  %104 = load i32*, i32** %6, align 8
  %105 = icmp ne i32* %104, null
  %106 = zext i1 %105 to i32
  %107 = call i64 @broken(i32 %106)
  %108 = icmp ne i64 %107, 0
  br label %109

109:                                              ; preds = %103, %83
  %110 = phi i1 [ true, %83 ], [ %108, %103 ]
  %111 = zext i1 %110 to i32
  %112 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %113 = load i8*, i8** %2, align 8
  %114 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %115 = call i64 @CreateWindowA(i8* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %114, i32 0, i32 0, i32 10, i32 10, i32* null, i32* null, i32* null, i32 0)
  store i64 %115, i64* %8, align 8
  %116 = load i64, i64* %8, align 8
  %117 = icmp ne i64 %116, 0
  %118 = zext i1 %117 to i32
  %119 = load i8*, i8** %2, align 8
  %120 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i8* %119)
  %121 = call i32* @GetModuleHandleA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32* %121, i32** %6, align 8
  %122 = load i32*, i32** %6, align 8
  %123 = icmp ne i32* %122, null
  %124 = zext i1 %123 to i32
  %125 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %126 = load i64, i64* %8, align 8
  %127 = call i32 @DestroyWindow(i64 %126)
  br label %128

128:                                              ; preds = %109, %82, %61
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @DeactivateActCtx(i32 0, i32 %129)
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 (i32, i8*, ...) @ok(i32 %131, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @ReleaseActCtx(i32 %133)
  %135 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %135)
  br label %200

136:                                              ; preds = %1
  %137 = call i32* @GetModuleHandleA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32* %137, i32** %6, align 8
  %138 = load i32*, i32** %6, align 8
  %139 = icmp ne i32* %138, null
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = call i32 (i32, i8*, ...) @ok(i32 %141, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %143 = load i8*, i8** %2, align 8
  %144 = call i32 @GetClassInfoA(i32 0, i8* %143, i32* %3)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %154, label %147

147:                                              ; preds = %136
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = call i64 @broken(i32 %151)
  %153 = icmp ne i64 %152, 0
  br label %154

154:                                              ; preds = %147, %136
  %155 = phi i1 [ true, %136 ], [ %153, %147 ]
  %156 = zext i1 %155 to i32
  %157 = load i8*, i8** %2, align 8
  %158 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %157)
  %159 = load i32, i32* %5, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %154
  br label %200

162:                                              ; preds = %154
  %163 = load i32, i32* @CP_ACP, align 4
  %164 = load i8*, i8** %2, align 8
  %165 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %166 = call i32 @MultiByteToWideChar(i32 %163, i32 0, i8* %164, i32 -1, i32* %165, i32 20)
  %167 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %168 = call i32 @GetClassInfoW(i32 0, i32* %167, i32* %4)
  store i32 %168, i32* %5, align 4
  %169 = load i32, i32* %5, align 4
  %170 = load i8*, i8** %2, align 8
  %171 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %170)
  %172 = call i32* @GetModuleHandleA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32* %172, i32** %6, align 8
  %173 = load i32*, i32** %6, align 8
  %174 = icmp ne i32* %173, null
  %175 = zext i1 %174 to i32
  %176 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %177 = load i32*, i32** %6, align 8
  %178 = call i32 @FreeLibrary(i32* %177)
  %179 = call i32* @GetModuleHandleA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32* %179, i32** %6, align 8
  %180 = load i32*, i32** %6, align 8
  %181 = icmp ne i32* %180, null
  %182 = xor i1 %181, true
  %183 = zext i1 %182 to i32
  %184 = call i32 (i32, i8*, ...) @ok(i32 %183, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %185 = load i8*, i8** %2, align 8
  %186 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %187 = call i64 @CreateWindowA(i8* %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %186, i32 0, i32 0, i32 10, i32 10, i32* null, i32* null, i32* null, i32 0)
  store i64 %187, i64* %8, align 8
  %188 = load i64, i64* %8, align 8
  %189 = icmp ne i64 %188, 0
  %190 = zext i1 %189 to i32
  %191 = load i8*, i8** %2, align 8
  %192 = call i32 (i32, i8*, ...) @ok(i32 %190, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i8* %191)
  %193 = call i32* @GetModuleHandleA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32* %193, i32** %6, align 8
  %194 = load i32*, i32** %6, align 8
  %195 = icmp ne i32* %194, null
  %196 = zext i1 %195 to i32
  %197 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %198 = load i64, i64* %8, align 8
  %199 = call i32 @DestroyWindow(i64 %198)
  br label %200

200:                                              ; preds = %161, %162, %128
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetTempPathA(i32, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @create_manifest_file(i8*, i32) #2

declare dso_local i32 @create_test_actctx(i8*) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32* @GetModuleHandleA(i8*) #2

declare dso_local i32 @ActivateActCtx(i32, i32*) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @GetClassInfoA(i32, i8*, i32*) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #2

declare dso_local i32 @GetClassInfoW(i32, i32*, i32*) #2

declare dso_local i32 @FreeLibrary(i32*) #2

declare dso_local i64 @CreateWindowA(i8*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32) #2

declare dso_local i32 @DestroyWindow(i64) #2

declare dso_local i32 @DeactivateActCtx(i32, i32) #2

declare dso_local i32 @ReleaseActCtx(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
