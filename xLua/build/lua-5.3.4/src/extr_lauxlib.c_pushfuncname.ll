; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lauxlib.c_pushfuncname.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lauxlib.c_pushfuncname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"function '%s'\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s '%s'\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"main chunk\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"function <%s:%d>\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*)* @pushfuncname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pushfuncname(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = call i64 @pushglobalfuncname(i32* %5, %struct.TYPE_4__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @lua_tostring(i32* %11, i32 -1)
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 (i32*, i8*, i8*, ...) @lua_pushfstring(i32* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @lua_remove(i32* %16, i32 -2)
  br label %66

18:                                               ; preds = %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32*, i8*, i8*, ...) @lua_pushfstring(i32* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %29, i32 %32)
  br label %65

34:                                               ; preds = %18
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 109
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @lua_pushliteral(i32* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %64

44:                                               ; preds = %34
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 67
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load i32*, i32** %3, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32*, i8*, i8*, ...) @lua_pushfstring(i32* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %55, i32 %58)
  br label %63

60:                                               ; preds = %44
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @lua_pushliteral(i32* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %51
  br label %64

64:                                               ; preds = %63, %41
  br label %65

65:                                               ; preds = %64, %25
  br label %66

66:                                               ; preds = %65, %9
  ret void
}

declare dso_local i64 @pushglobalfuncname(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i8*, ...) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
