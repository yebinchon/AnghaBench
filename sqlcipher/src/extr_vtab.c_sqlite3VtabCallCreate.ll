; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vtab.c_sqlite3VtabCallCreate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vtab.c_sqlite3VtabCallCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i8**, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"no such module: %s\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3VtabCallCreate(%struct.TYPE_20__* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  %13 = load i32, i32* @SQLITE_OK, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_21__* @sqlite3FindTable(%struct.TYPE_20__* %14, i8* %15, i32 %23)
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %10, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %26 = icmp ne %struct.TYPE_21__* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %29 = call i64 @IsVirtual(%struct.TYPE_21__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %31, %27, %4
  %38 = phi i1 [ false, %27 ], [ false, %4 ], [ %36, %31 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %12, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = load i8*, i8** %12, align 8
  %49 = call i64 @sqlite3HashFind(i32* %47, i8* %48)
  %50 = inttoptr i64 %49 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %50, %struct.TYPE_22__** %11, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %52 = icmp eq %struct.TYPE_22__* %51, null
  br i1 %52, label %67, label %53

53:                                               ; preds = %37
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %53
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60, %53, %37
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = call i8* @sqlite3MPrintf(%struct.TYPE_20__* %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %69)
  %71 = load i8**, i8*** %8, align 8
  store i8* %70, i8** %71, align 8
  %72 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %72, i32* %9, align 4
  br label %84

73:                                               ; preds = %60
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i8**, i8*** %8, align 8
  %83 = call i32 @vtabCallConstructor(%struct.TYPE_20__* %74, %struct.TYPE_21__* %75, %struct.TYPE_22__* %76, i64 %81, i8** %82)
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %73, %67
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @SQLITE_OK, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %84
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %91 = call i32 @sqlite3GetVTable(%struct.TYPE_20__* %89, %struct.TYPE_21__* %90)
  %92 = call i64 @ALWAYS(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %88
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %96 = call i32 @growVTrans(%struct.TYPE_20__* %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @SQLITE_OK, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %104 = call i32 @sqlite3GetVTable(%struct.TYPE_20__* %102, %struct.TYPE_21__* %103)
  %105 = call i32 @addToVTrans(%struct.TYPE_20__* %101, i32 %104)
  br label %106

106:                                              ; preds = %100, %94
  br label %107

107:                                              ; preds = %106, %88, %84
  %108 = load i32, i32* %9, align 4
  ret i32 %108
}

declare dso_local %struct.TYPE_21__* @sqlite3FindTable(%struct.TYPE_20__*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @IsVirtual(%struct.TYPE_21__*) #1

declare dso_local i64 @sqlite3HashFind(i32*, i8*) #1

declare dso_local i8* @sqlite3MPrintf(%struct.TYPE_20__*, i8*, i8*) #1

declare dso_local i32 @vtabCallConstructor(%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_22__*, i64, i8**) #1

declare dso_local i64 @ALWAYS(i32) #1

declare dso_local i32 @sqlite3GetVTable(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @growVTrans(%struct.TYPE_20__*) #1

declare dso_local i32 @addToVTrans(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
