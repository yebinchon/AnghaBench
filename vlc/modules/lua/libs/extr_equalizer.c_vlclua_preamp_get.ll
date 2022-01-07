; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_equalizer.c_vlclua_preamp_get.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_equalizer.c_vlclua_preamp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"audio-filter\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"equalizer\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"equalizer-preamp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_preamp_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_preamp_get(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32* @vlclua_get_aout_internal(i32* %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

11:                                               ; preds = %1
  %12 = load i32*, i32** %4, align 8
  %13 = call i8* @var_GetNonEmptyString(i32* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i8*, i8** %5, align 8
  %18 = call i32* @strstr(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %16, %11
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @free(i8* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @aout_Release(i32* %23)
  store i32 0, i32* %2, align 4
  br label %34

25:                                               ; preds = %16
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @free(i8* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @var_GetFloat(i32* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 @lua_pushnumber(i32* %28, i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @aout_Release(i32* %32)
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %25, %20, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32* @vlclua_get_aout_internal(i32*) #1

declare dso_local i8* @var_GetNonEmptyString(i32*, i8*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @aout_Release(i32*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @var_GetFloat(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
