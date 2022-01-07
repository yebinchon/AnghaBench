; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_read_cstring.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_read_cstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bson_reader = type { i32, i8* }

@.str = private unnamed_addr constant [29 x i8] c"Invalid bson block : cstring\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.bson_reader*, i64*)* @read_cstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_cstring(i32* %0, %struct.bson_reader* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bson_reader*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bson_reader* %1, %struct.bson_reader** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %30, %3
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.bson_reader*, %struct.bson_reader** %5, align 8
  %12 = getelementptr inbounds %struct.bson_reader, %struct.bson_reader* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @luaL_error(i32* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %9
  %19 = load %struct.bson_reader*, %struct.bson_reader** %5, align 8
  %20 = getelementptr inbounds %struct.bson_reader, %struct.bson_reader* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %33

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %9

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64*, i64** %6, align 8
  store i64 %35, i64* %36, align 8
  %37 = load %struct.bson_reader*, %struct.bson_reader** %5, align 8
  %38 = getelementptr inbounds %struct.bson_reader, %struct.bson_reader* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  %42 = load %struct.bson_reader*, %struct.bson_reader** %5, align 8
  %43 = getelementptr inbounds %struct.bson_reader, %struct.bson_reader* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = sext i32 %41 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %43, align 8
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  %49 = load %struct.bson_reader*, %struct.bson_reader** %5, align 8
  %50 = getelementptr inbounds %struct.bson_reader, %struct.bson_reader* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load i8*, i8** %8, align 8
  ret i8* %53
}

declare dso_local i32 @luaL_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
