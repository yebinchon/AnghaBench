; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonEachConnect.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonEachConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [83 x i8] c"CREATE TABLE x(key,value,type,atom,id,parent,fullkey,path,json HIDDEN,root HIDDEN)\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i32**, i8**)* @jsonEachConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsonEachConnect(i32* %0, i8* %1, i32 %2, i8** %3, i32** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %16 = load i8**, i8*** %13, align 8
  %17 = bitcast i8** %16 to i8*
  %18 = call i32 @UNUSED_PARAM(i8* %17)
  %19 = load i8**, i8*** %11, align 8
  %20 = bitcast i8** %19 to i8*
  %21 = call i32 @UNUSED_PARAM(i8* %20)
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @UNUSED_PARAM(i8* %24)
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @UNUSED_PARAM(i8* %26)
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @sqlite3_declare_vtab(i32* %28, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* @SQLITE_OK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %6
  %34 = call i32* @sqlite3_malloc(i32 4)
  %35 = load i32**, i32*** %12, align 8
  store i32* %34, i32** %35, align 8
  store i32* %34, i32** %14, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %39, i32* %7, align 4
  br label %45

40:                                               ; preds = %33
  %41 = load i32*, i32** %14, align 8
  %42 = call i32 @memset(i32* %41, i32 0, i32 4)
  br label %43

43:                                               ; preds = %40, %6
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %38
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @UNUSED_PARAM(i8*) #1

declare dso_local i32 @sqlite3_declare_vtab(i32*, i8*) #1

declare dso_local i32* @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
