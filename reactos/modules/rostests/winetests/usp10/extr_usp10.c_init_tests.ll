; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/usp10/extr_usp10.c_init_tests.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/usp10/extr_usp10.c_init_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"usp10.dll\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Expected usp10.dll to be loaded.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"ScriptItemizeOpenType\00", align 1
@pScriptItemizeOpenType = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"ScriptShapeOpenType\00", align 1
@pScriptShapeOpenType = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"ScriptGetFontScriptTags\00", align 1
@pScriptGetFontScriptTags = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"ScriptGetFontLanguageTags\00", align 1
@pScriptGetFontLanguageTags = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"ScriptGetFontFeatureTags\00", align 1
@pScriptGetFontFeatureTags = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_tests() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 @GetModuleHandleA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = icmp ne i64 %3, 0
  %5 = zext i1 %4 to i32
  %6 = call i32 @ok(i32 %5, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i64, i64* %1, align 8
  %8 = call i64 @GetProcAddress(i64 %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %9 = inttoptr i64 %8 to i8*
  store i8* %9, i8** @pScriptItemizeOpenType, align 8
  %10 = load i64, i64* %1, align 8
  %11 = call i64 @GetProcAddress(i64 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** @pScriptShapeOpenType, align 8
  %13 = load i64, i64* %1, align 8
  %14 = call i64 @GetProcAddress(i64 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** @pScriptGetFontScriptTags, align 8
  %16 = load i64, i64* %1, align 8
  %17 = call i64 @GetProcAddress(i64 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** @pScriptGetFontLanguageTags, align 8
  %19 = load i64, i64* %1, align 8
  %20 = call i64 @GetProcAddress(i64 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** @pScriptGetFontFeatureTags, align 8
  ret void
}

declare dso_local i64 @GetModuleHandleA(i8*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @GetProcAddress(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
