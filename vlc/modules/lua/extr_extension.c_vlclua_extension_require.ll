; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/extr_extension.c_vlclua_extension_require.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/extr_extension.c_vlclua_extension_require.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"loading module '%s' from extension package\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"could not find package name\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%s/modules/%s.luac\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"unable to load module '%s' from package\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_extension_require to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_extension_require(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i8* @luaL_checkstring(i32* %11, i32 1)
  store i8* %12, i8** %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32* @vlclua_get_this(i32* %13)
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call %struct.TYPE_3__* @vlclua_extension_get(i32* %15)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %6, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @msg_Dbg(i32* %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @strdup(i32 %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i8* @strrchr(i8* %24, i8 signext 47)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %1
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @free(i8* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 (i32*, i8*, ...) @luaL_error(i32* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 %32, i32* %2, align 4
  br label %72

33:                                               ; preds = %1
  %34 = load i8*, i8** %9, align 8
  store i8 0, i8* %34, align 1
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @asprintf(i8** %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %35, i8* %36)
  %38 = icmp eq i32 -1, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @free(i8* %40)
  store i32 1, i32* %2, align 4
  br label %72

42:                                               ; preds = %33
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @vlclua_dofile(i32* %43, i32* %44, i8* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %50, i64 %54
  store i8 0, i8* %55, align 1
  %56 = load i32*, i32** %5, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @vlclua_dofile(i32* %56, i32* %57, i8* %58)
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %49, %42
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @free(i8* %61)
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32*, i32** %3, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 (i32*, i8*, ...) @luaL_error(i32* %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  store i32 %70, i32* %2, align 4
  br label %72

71:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %67, %39, %28
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32* @vlclua_get_this(i32*) #1

declare dso_local %struct.TYPE_3__* @vlclua_extension_get(i32*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @vlclua_dofile(i32*, i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
