; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_replace_object.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_replace_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bson = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Type mismatch, need bson type %d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid object id\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Invalid date\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Invalid timestamp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.bson*)* @replace_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replace_object(i32* %0, i32 %1, %struct.bson* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bson*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bson* %2, %struct.bson** %6, align 8
  store i64 0, i64* %7, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i8* @luaL_checklstring(i32* %13, i32 3, i64* %7)
  store i8* %14, i8** %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %15, 6
  br i1 %16, label %30, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %17
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23, %17, %3
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i32*, i8*, ...) @luaL_error(i32* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %30, %23
  %35 = load i32, i32* %5, align 4
  switch i32 %35, label %86 [
    i32 129, label %36
    i32 130, label %49
    i32 128, label %65
  ]

36:                                               ; preds = %34
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %37, 14
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 (i32*, i8*, ...) @luaL_error(i32* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.bson*, %struct.bson** %6, align 8
  %44 = getelementptr inbounds %struct.bson, %struct.bson* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  %48 = call i32 @memcpy(i32 %45, i8* %47, i32 12)
  br label %86

49:                                               ; preds = %34
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 6
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 (i32*, i8*, ...) @luaL_error(i32* %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = bitcast i8* %57 to i32*
  store i32* %58, i32** %9, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %60, 1000
  store i32 %61, i32* %10, align 4
  %62 = load %struct.bson*, %struct.bson** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @write_int64(%struct.bson* %62, i32 %63)
  br label %86

65:                                               ; preds = %34
  %66 = load i64, i64* %7, align 8
  %67 = icmp ne i64 %66, 10
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 (i32*, i8*, ...) @luaL_error(i32* %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  %74 = bitcast i8* %73 to i32*
  store i32* %74, i32** %11, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 6
  %77 = bitcast i8* %76 to i32*
  store i32* %77, i32** %12, align 8
  %78 = load %struct.bson*, %struct.bson** %6, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @write_int32(%struct.bson* %78, i32 %80)
  %82 = load %struct.bson*, %struct.bson** %6, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @write_int32(%struct.bson* %82, i32 %84)
  br label %86

86:                                               ; preds = %34, %71, %55, %42
  ret void
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @write_int64(%struct.bson*, i32) #1

declare dso_local i32 @write_int32(%struct.bson*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
