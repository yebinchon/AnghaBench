; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-cluster.c_lunpackrequest.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-cluster.c_lunpackrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TLIGHTUSERDATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Invalid req package type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lunpackrequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lunpackrequest(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @lua_type(i32* %7, i32 1)
  %9 = load i64, i64* @LUA_TLIGHTUSERDATA, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @lua_touserdata(i32* %12, i32 1)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %5, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @luaL_checkinteger(i32* %15, i32 2)
  store i32 %16, i32* %4, align 4
  br label %22

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i8* @luaL_checklstring(i32* %18, i32 1, i64* %6)
  store i8* %19, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %17, %11
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  switch i32 %26, label %74 [
    i32 0, label %27
    i32 1, label %33
    i32 65, label %39
    i32 2, label %45
    i32 3, label %45
    i32 4, label %51
    i32 -128, label %56
    i32 -127, label %62
    i32 -63, label %68
  ]

27:                                               ; preds = %22
  %28 = load i32*, i32** %3, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @unpackreq_number(i32* %28, i32* %30, i32 %31)
  store i32 %32, i32* %2, align 4
  br label %80

33:                                               ; preds = %22
  %34 = load i32*, i32** %3, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @unpackmreq_number(i32* %34, i32* %36, i32 %37, i32 0)
  store i32 %38, i32* %2, align 4
  br label %80

39:                                               ; preds = %22
  %40 = load i32*, i32** %3, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @unpackmreq_number(i32* %40, i32* %42, i32 %43, i32 1)
  store i32 %44, i32* %2, align 4
  br label %80

45:                                               ; preds = %22, %22
  %46 = load i32*, i32** %3, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @unpackmreq_part(i32* %46, i32* %48, i32 %49)
  store i32 %50, i32* %2, align 4
  br label %80

51:                                               ; preds = %22
  %52 = load i32*, i32** %3, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @unpacktrace(i32* %52, i8* %53, i32 %54)
  store i32 %55, i32* %2, align 4
  br label %80

56:                                               ; preds = %22
  %57 = load i32*, i32** %3, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @unpackreq_string(i32* %57, i32* %59, i32 %60)
  store i32 %61, i32* %2, align 4
  br label %80

62:                                               ; preds = %22
  %63 = load i32*, i32** %3, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = bitcast i8* %64 to i32*
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @unpackmreq_string(i32* %63, i32* %65, i32 %66, i32 0)
  store i32 %67, i32* %2, align 4
  br label %80

68:                                               ; preds = %22
  %69 = load i32*, i32** %3, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = bitcast i8* %70 to i32*
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @unpackmreq_string(i32* %69, i32* %71, i32 %72, i32 1)
  store i32 %73, i32* %2, align 4
  br label %80

74:                                               ; preds = %22
  %75 = load i32*, i32** %3, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = call i32 @luaL_error(i32* %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8 signext %78)
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %74, %68, %62, %56, %51, %45, %39, %33, %27
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i64 @lua_touserdata(i32*, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @unpackreq_number(i32*, i32*, i32) #1

declare dso_local i32 @unpackmreq_number(i32*, i32*, i32, i32) #1

declare dso_local i32 @unpackmreq_part(i32*, i32*, i32) #1

declare dso_local i32 @unpacktrace(i32*, i8*, i32) #1

declare dso_local i32 @unpackreq_string(i32*, i32*, i32) #1

declare dso_local i32 @unpackmreq_string(i32*, i32*, i32, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
