; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5ApiCallback.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5ApiCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"no such cursor: %lld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @fts5ApiCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5ApiCallback(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 1
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @sqlite3_user_data(i32* %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %7, align 8
  %18 = load i32**, i32*** %6, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @sqlite3_value_int64(i32* %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32* @fts5CursorFromCsrid(i32 %24, i32 %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  %31 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i8* %31, i8** %10, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @sqlite3_result_error(i32* %32, i8* %33, i32 -1)
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @sqlite3_free(i8* %35)
  br label %46

37:                                               ; preds = %3
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load i32**, i32*** %6, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 1
  %45 = call i32 @fts5ApiInvoke(%struct.TYPE_3__* %38, i32* %39, i32* %40, i32 %42, i32** %44)
  br label %46

46:                                               ; preds = %37, %29
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_user_data(i32*) #1

declare dso_local i32 @sqlite3_value_int64(i32*) #1

declare dso_local i32* @fts5CursorFromCsrid(i32, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i32) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @fts5ApiInvoke(%struct.TYPE_3__*, i32*, i32*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
