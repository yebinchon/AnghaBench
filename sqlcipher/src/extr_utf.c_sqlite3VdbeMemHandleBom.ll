; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_utf.c_sqlite3VdbeMemHandleBom.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_utf.c_sqlite3VdbeMemHandleBom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_UTF16BE = common dso_local global i32 0, align 4
@SQLITE_UTF16LE = common dso_local global i32 0, align 4
@MEM_Term = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3VdbeMemHandleBom(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %7 = load i32, i32* @SQLITE_OK, align 4
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sge i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %46

18:                                               ; preds = %1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 254
  br i1 %31, label %32, label %37

32:                                               ; preds = %18
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 255
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @SQLITE_UTF16BE, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %32, %18
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 255
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 254
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @SQLITE_UTF16LE, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %40, %37
  br label %46

46:                                               ; preds = %45, %1
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %97

49:                                               ; preds = %46
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %51 = call i32 @sqlite3VdbeMemMakeWriteable(%struct.TYPE_4__* %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @SQLITE_OK, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %96

55:                                               ; preds = %49
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 2
  store i32 %59, i32* %57, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @memmove(i8* %62, i8* %66, i32 %69)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %73, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %81, i64 %86
  store i8 0, i8* %87, align 1
  %88 = load i32, i32* @MEM_Term, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %55, %49
  br label %97

97:                                               ; preds = %96, %46
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeMemMakeWriteable(%struct.TYPE_4__*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
