; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vtshim.c_sqlite3_dispose_module.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vtshim.c_sqlite3_dispose_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 (i32)*, i32, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 (i32)*, i32 (i32)* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_7__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3_dispose_module(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %3, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %72, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %4, align 8
  br label %16

16:                                               ; preds = %50, %12
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %54

19:                                               ; preds = %16
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %5, align 8
  br label %23

23:                                               ; preds = %36, %19
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = icmp ne %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32 (i32)*, i32 (i32)** %30, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %31(i32 %34)
  br label %36

36:                                               ; preds = %26
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %5, align 8
  br label %23

40:                                               ; preds = %23
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32 (i32)*, i32 (i32)** %44, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 %45(i32 %48)
  br label %50

50:                                               ; preds = %40
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %4, align 8
  br label %16

54:                                               ; preds = %16
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32 (i32)*, i32 (i32)** %58, align 8
  %60 = icmp ne i32 (i32)* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32 (i32)*, i32 (i32)** %63, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 %64(i32 %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i32 (i32)* null, i32 (i32)** %70, align 8
  br label %71

71:                                               ; preds = %61, %54
  br label %72

72:                                               ; preds = %71, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
