; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_tclsqlite.c_dbEvalColumnValue.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_tclsqlite.c_dbEvalColumnValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_6__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i32)* @dbEvalColumnValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dbEvalColumnValue(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @sqlite3_column_type(i32* %15, i32 %16)
  switch i32 %17, label %60 [
    i32 131, label %18
    i32 129, label %33
    i32 130, label %48
    i32 128, label %53
  ]

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @sqlite3_column_bytes(i32* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i8* @sqlite3_column_blob(i32* %22, i32 %23)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %27, %18
  %29 = load i8*, i8** %8, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = load i32, i32* %7, align 4
  %32 = call i32* @Tcl_NewByteArrayObj(i32* %30, i32 %31)
  store i32* %32, i32** %3, align 8
  br label %66

33:                                               ; preds = %2
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @sqlite3_column_int64(i32* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp sge i32 %37, -2147483647
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = icmp sle i32 %40, 2147483647
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = call i32* @Tcl_NewIntObj(i32 %43)
  store i32* %44, i32** %3, align 8
  br label %66

45:                                               ; preds = %39, %33
  %46 = load i32, i32* %9, align 4
  %47 = call i32* @Tcl_NewWideIntObj(i32 %46)
  store i32* %47, i32** %3, align 8
  br label %66

48:                                               ; preds = %2
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @sqlite3_column_double(i32* %49, i32 %50)
  %52 = call i32* @Tcl_NewDoubleObj(i32 %51)
  store i32* %52, i32** %3, align 8
  br label %66

53:                                               ; preds = %2
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32* @Tcl_NewStringObj(i8* %58, i32 -1)
  store i32* %59, i32** %3, align 8
  br label %66

60:                                               ; preds = %2
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @sqlite3_column_text(i32* %61, i32 %62)
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32* @Tcl_NewStringObj(i8* %64, i32 -1)
  store i32* %65, i32** %3, align 8
  br label %66

66:                                               ; preds = %60, %53, %48, %45, %42, %28
  %67 = load i32*, i32** %3, align 8
  ret i32* %67
}

declare dso_local i32 @sqlite3_column_type(i32*, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i8* @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32* @Tcl_NewByteArrayObj(i32*, i32) #1

declare dso_local i32 @sqlite3_column_int64(i32*, i32) #1

declare dso_local i32* @Tcl_NewIntObj(i32) #1

declare dso_local i32* @Tcl_NewWideIntObj(i32) #1

declare dso_local i32* @Tcl_NewDoubleObj(i32) #1

declare dso_local i32 @sqlite3_column_double(i32*, i32) #1

declare dso_local i32* @Tcl_NewStringObj(i8*, i32) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
