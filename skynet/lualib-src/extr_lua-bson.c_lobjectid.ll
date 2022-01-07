; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_lobjectid.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_lobjectid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BSON_OBJECTID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid objectid %s\00", align 1
@oid_counter = common dso_local global i32 0, align 4
@oid_header = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lobjectid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lobjectid(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [14 x i32], align 16
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = bitcast [14 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 56, i1 false)
  %11 = getelementptr inbounds [14 x i32], [14 x i32]* %4, i64 0, i64 0
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* @BSON_OBJECTID, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @lua_isstring(i32* %14, i32 1)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %56

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i8* @lua_tolstring(i32* %18, i32 1, i64* %5)
  store i8* %19, i8** %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 24
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32*, i32** %3, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @luaL_error(i32* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i32 %25, i32* %2, align 4
  br label %94

26:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %52, %26
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 12
  br i1 %29, label %30, label %55

30:                                               ; preds = %27
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = mul nsw i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @hextoint(i8 signext %36)
  %38 = shl i32 %37, 4
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = mul nsw i32 %40, 2
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = call i32 @hextoint(i8 signext %45)
  %47 = or i32 %38, %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [14 x i32], [14 x i32]* %4, i64 0, i64 %50
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %30
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %27

55:                                               ; preds = %27
  br label %89

56:                                               ; preds = %1
  %57 = call i32 @time(i32* null)
  store i32 %57, i32* %8, align 4
  %58 = call i32 @ATOM_FINC(i32* @oid_counter)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = ashr i32 %59, 24
  %61 = and i32 %60, 255
  %62 = getelementptr inbounds [14 x i32], [14 x i32]* %4, i64 0, i64 2
  store i32 %61, i32* %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = ashr i32 %63, 16
  %65 = and i32 %64, 255
  %66 = getelementptr inbounds [14 x i32], [14 x i32]* %4, i64 0, i64 3
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  %68 = ashr i32 %67, 8
  %69 = and i32 %68, 255
  %70 = getelementptr inbounds [14 x i32], [14 x i32]* %4, i64 0, i64 4
  store i32 %69, i32* %70, align 16
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, 255
  %73 = getelementptr inbounds [14 x i32], [14 x i32]* %4, i64 0, i64 5
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds [14 x i32], [14 x i32]* %4, i64 0, i64 0
  %75 = getelementptr inbounds i32, i32* %74, i64 6
  %76 = load i32, i32* @oid_header, align 4
  %77 = call i32 @memcpy(i32* %75, i32 %76, i32 5)
  %78 = load i32, i32* %9, align 4
  %79 = ashr i32 %78, 16
  %80 = and i32 %79, 255
  %81 = getelementptr inbounds [14 x i32], [14 x i32]* %4, i64 0, i64 11
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %9, align 4
  %83 = ashr i32 %82, 8
  %84 = and i32 %83, 255
  %85 = getelementptr inbounds [14 x i32], [14 x i32]* %4, i64 0, i64 12
  store i32 %84, i32* %85, align 16
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, 255
  %88 = getelementptr inbounds [14 x i32], [14 x i32]* %4, i64 0, i64 13
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %56, %55
  %90 = load i32*, i32** %3, align 8
  %91 = getelementptr inbounds [14 x i32], [14 x i32]* %4, i64 0, i64 0
  %92 = bitcast i32* %91 to i8*
  %93 = call i32 @lua_pushlstring(i32* %90, i8* %92, i32 14)
  store i32 1, i32* %2, align 4
  br label %94

94:                                               ; preds = %89, %22
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @lua_isstring(i32*, i32) #2

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #2

declare dso_local i32 @luaL_error(i32*, i8*, i8*) #2

declare dso_local i32 @hextoint(i8 signext) #2

declare dso_local i32 @time(i32*) #2

declare dso_local i32 @ATOM_FINC(i32*) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
