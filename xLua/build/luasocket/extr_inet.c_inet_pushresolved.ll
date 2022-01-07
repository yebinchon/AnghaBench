; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_inet.c_inet_pushresolved.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_inet.c_inet_pushresolved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i8*, i8**, i64 }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.hostent*)* @inet_pushresolved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inet_pushresolved(i32* %0, %struct.hostent* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.hostent*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.in_addr**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.hostent* %1, %struct.hostent** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @lua_newtable(i32* %9)
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @lua_gettop(i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_pushstring(i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.hostent*, %struct.hostent** %4, align 8
  %17 = getelementptr inbounds %struct.hostent, %struct.hostent* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @lua_pushstring(i32* %15, i8* %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @lua_settable(i32* %20, i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_pushstring(i32* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_pushstring(i32* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  %27 = load %struct.hostent*, %struct.hostent** %4, align 8
  %28 = getelementptr inbounds %struct.hostent, %struct.hostent* %27, i32 0, i32 1
  %29 = load i8**, i8*** %28, align 8
  store i8** %29, i8*** %5, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @lua_newtable(i32* %30)
  %32 = load i8**, i8*** %5, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %54

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %39, %34
  %36 = load i8**, i8*** %5, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @lua_pushnumber(i32* %40, i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load i8**, i8*** %5, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @lua_pushstring(i32* %43, i8* %45)
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @lua_settable(i32* %47, i32 -3)
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %52, i8*** %5, align 8
  br label %35

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53, %2
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @lua_settable(i32* %55, i32 %56)
  store i32 1, i32* %7, align 4
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @lua_newtable(i32* %58)
  %60 = load %struct.hostent*, %struct.hostent** %4, align 8
  %61 = getelementptr inbounds %struct.hostent, %struct.hostent* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.in_addr**
  store %struct.in_addr** %63, %struct.in_addr*** %6, align 8
  %64 = load %struct.in_addr**, %struct.in_addr*** %6, align 8
  %65 = icmp ne %struct.in_addr** %64, null
  br i1 %65, label %66, label %89

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %71, %66
  %68 = load %struct.in_addr**, %struct.in_addr*** %6, align 8
  %69 = load %struct.in_addr*, %struct.in_addr** %68, align 8
  %70 = icmp ne %struct.in_addr* %69, null
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @lua_pushnumber(i32* %72, i32 %73)
  %75 = load i32*, i32** %3, align 8
  %76 = load %struct.in_addr**, %struct.in_addr*** %6, align 8
  %77 = load %struct.in_addr*, %struct.in_addr** %76, align 8
  %78 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @inet_ntoa(i32 %79)
  %81 = call i32 @lua_pushstring(i32* %75, i8* %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @lua_settable(i32* %82, i32 -3)
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  %86 = load %struct.in_addr**, %struct.in_addr*** %6, align 8
  %87 = getelementptr inbounds %struct.in_addr*, %struct.in_addr** %86, i32 1
  store %struct.in_addr** %87, %struct.in_addr*** %6, align 8
  br label %67

88:                                               ; preds = %67
  br label %89

89:                                               ; preds = %88, %54
  %90 = load i32*, i32** %3, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @lua_settable(i32* %90, i32 %91)
  ret void
}

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i8* @inet_ntoa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
