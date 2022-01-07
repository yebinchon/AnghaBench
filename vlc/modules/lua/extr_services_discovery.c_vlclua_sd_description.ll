; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/extr_services_discovery.c_vlclua_sd_description.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/extr_services_discovery.c_vlclua_sd_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"descriptor\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"No 'descriptor' function in '%s'\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Error while running script %s, function descriptor(): %s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"'descriptor' function in '%s' returned no title\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i8*)* @vlclua_sd_description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vlclua_sd_description(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = call i32 @lua_getglobal(i32* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @lua_isfunction(i32* %10, i32 -1)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 (i32*, i8*, i8*, ...) @msg_Warn(i32* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @lua_pop(i32* %17, i32 1)
  store i8* null, i8** %4, align 8
  br label %46

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @lua_pcall(i32* %20, i32 0, i32 1, i32 0)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i8* @lua_tostring(i32* %26, i32 -1)
  %28 = call i32 (i32*, i8*, i8*, ...) @msg_Warn(i32* %24, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i8* %25, i8* %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @lua_pop(i32* %29, i32 1)
  store i8* null, i8** %4, align 8
  br label %46

31:                                               ; preds = %19
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @lua_getfield(i32* %32, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @lua_isstring(i32* %34, i32 -1)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load i32*, i32** %5, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 (i32*, i8*, i8*, ...) @msg_Warn(i32* %38, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* %39)
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @lua_pop(i32* %41, i32 2)
  store i8* null, i8** %4, align 8
  br label %46

43:                                               ; preds = %31
  %44 = load i32*, i32** %6, align 8
  %45 = call i8* @lua_tostring(i32* %44, i32 -1)
  store i8* %45, i8** %4, align 8
  br label %46

46:                                               ; preds = %43, %37, %23, %13
  %47 = load i8*, i8** %4, align 8
  ret i8* %47
}

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i32 @lua_isfunction(i32*, i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*, i8*, ...) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_isstring(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
