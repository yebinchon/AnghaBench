; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-crypt.c_lfromhex.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-crypt.c_lfromhex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Invalid hex text size %d\00", align 1
@SMALL_CHUNK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid hex text\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lfromhex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lfromhex(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i8* @luaL_checklstring(i32* %13, i32 1, i64* %4)
  store i8* %14, i8** %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = and i64 %15, 1
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 (i32*, i8*, ...) @luaL_error(i32* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 %22, i32* %2, align 4
  br label %91

23:                                               ; preds = %1
  %24 = load i32, i32* @SMALL_CHUNK, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %6, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %7, align 8
  store i8* %27, i8** %8, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i32, i32* @SMALL_CHUNK, align 4
  %30 = mul nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = icmp ugt i64 %28, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load i32*, i32** %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = udiv i64 %35, 2
  %37 = call i8* @lua_newuserdata(i32* %34, i64 %36)
  store i8* %37, i8** %8, align 8
  br label %38

38:                                               ; preds = %33, %23
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %80, %38
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %4, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %83

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @HEX(i32 %45, i8 signext %50)
  %52 = load i32, i32* %11, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @HEX(i32 %52, i8 signext %58)
  %60 = load i32, i32* %10, align 4
  %61 = icmp sgt i32 %60, 16
  br i1 %61, label %65, label %62

62:                                               ; preds = %44
  %63 = load i32, i32* %11, align 4
  %64 = icmp sgt i32 %63, 16
  br i1 %64, label %65, label %69

65:                                               ; preds = %62, %44
  %66 = load i32*, i32** %3, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 (i32*, i8*, ...) @luaL_error(i32* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  store i32 %68, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %89

69:                                               ; preds = %62
  %70 = load i32, i32* %10, align 4
  %71 = shl i32 %70, 4
  %72 = load i32, i32* %11, align 4
  %73 = or i32 %71, %72
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sdiv i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  store i8 %74, i8* %79, align 1
  br label %80

80:                                               ; preds = %69
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 2
  store i32 %82, i32* %9, align 4
  br label %39

83:                                               ; preds = %39
  %84 = load i32*, i32** %3, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sdiv i32 %86, 2
  %88 = call i32 @lua_pushlstring(i32* %84, i8* %85, i32 %87)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %89

89:                                               ; preds = %83, %65
  %90 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %90)
  br label %91

91:                                               ; preds = %89, %18
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @lua_newuserdata(i32*, i64) #1

declare dso_local i32 @HEX(i32, i8 signext) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
