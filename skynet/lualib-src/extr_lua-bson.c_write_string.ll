; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_write_string.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_write_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bson = type { i8*, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Invalid utf8 string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bson*, i32*, i8*, i64)* @write_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_string(%struct.bson* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.bson*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.bson* %0, %struct.bson** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.bson*, %struct.bson** %5, align 8
  %14 = load i64, i64* %8, align 8
  %15 = add i64 %14, 1
  %16 = call i32 @bson_reserve(%struct.bson* %13, i64 %15)
  %17 = load %struct.bson*, %struct.bson** %5, align 8
  %18 = getelementptr inbounds %struct.bson, %struct.bson* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.bson*, %struct.bson** %5, align 8
  %21 = getelementptr inbounds %struct.bson, %struct.bson* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %19, i64 %23
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %7, align 8
  store i8* %25, i8** %10, align 8
  %26 = load i64, i64* %8, align 8
  store i64 %26, i64* %11, align 8
  br label %27

27:                                               ; preds = %40, %4
  %28 = load i64, i64* %11, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %27
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @utf8_copy(i8* %31, i8* %32, i64 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @luaL_error(i32* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %30
  %41 = load i32, i32* %12, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %10, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %9, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %11, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %11, align 8
  br label %27

53:                                               ; preds = %27
  %54 = load %struct.bson*, %struct.bson** %5, align 8
  %55 = getelementptr inbounds %struct.bson, %struct.bson* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.bson*, %struct.bson** %5, align 8
  %58 = getelementptr inbounds %struct.bson, %struct.bson* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %60, %61
  %63 = getelementptr inbounds i8, i8* %56, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %64, 1
  %66 = load %struct.bson*, %struct.bson** %5, align 8
  %67 = getelementptr inbounds %struct.bson, %struct.bson* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = add i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 8
  ret void
}

declare dso_local i32 @bson_reserve(%struct.bson*, i64) #1

declare dso_local i32 @utf8_copy(i8*, i8*, i64) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
