; ModuleID = '/home/carl/AnghaBench/redis/src/extr_quicklist.c_quicklistPopCustom.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_quicklist.c_quicklistPopCustom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@QUICKLIST_HEAD = common dso_local global i32 0, align 4
@QUICKLIST_TAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quicklistPopCustom(%struct.TYPE_7__* %0, i32 %1, i8** %2, i32* %3, i64* %4, i8* (i8*, i32)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8* (i8*, i32)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8** %2, i8*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64* %4, i64** %12, align 8
  store i8* (i8*, i32)* %5, i8* (i8*, i32)** %13, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @QUICKLIST_HEAD, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 0, i32 -1
  store i32 %24, i32* %18, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %118

30:                                               ; preds = %6
  %31 = load i8**, i8*** %10, align 8
  %32 = icmp ne i8** %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i8**, i8*** %10, align 8
  store i8* null, i8** %34, align 8
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i32*, i32** %11, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32*, i32** %11, align 8
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i64*, i64** %12, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i64*, i64** %12, align 8
  store i64 -123456789, i64* %44, align 8
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @QUICKLIST_HEAD, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = icmp ne %struct.TYPE_6__* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %19, align 8
  br label %73

58:                                               ; preds = %49, %45
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @QUICKLIST_TAIL, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = icmp ne %struct.TYPE_6__* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  store %struct.TYPE_6__* %70, %struct.TYPE_6__** %19, align 8
  br label %72

71:                                               ; preds = %62, %58
  store i32 0, i32* %7, align 4
  br label %118

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72, %54
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %18, align 4
  %78 = call i8* @ziplistIndex(i32 %76, i32 %77)
  store i8* %78, i8** %14, align 8
  %79 = load i8*, i8** %14, align 8
  %80 = call i64 @ziplistGet(i8* %79, i8** %15, i32* %16, i64* %17)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %117

82:                                               ; preds = %73
  %83 = load i8*, i8** %15, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %101

85:                                               ; preds = %82
  %86 = load i8**, i8*** %10, align 8
  %87 = icmp ne i8** %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i8* (i8*, i32)*, i8* (i8*, i32)** %13, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = load i32, i32* %16, align 4
  %92 = call i8* %89(i8* %90, i32 %91)
  %93 = load i8**, i8*** %10, align 8
  store i8* %92, i8** %93, align 8
  br label %94

94:                                               ; preds = %88, %85
  %95 = load i32*, i32** %11, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %16, align 4
  %99 = load i32*, i32** %11, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %94
  br label %113

101:                                              ; preds = %82
  %102 = load i8**, i8*** %10, align 8
  %103 = icmp ne i8** %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i8**, i8*** %10, align 8
  store i8* null, i8** %105, align 8
  br label %106

106:                                              ; preds = %104, %101
  %107 = load i64*, i64** %12, align 8
  %108 = icmp ne i64* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i64, i64* %17, align 8
  %111 = load i64*, i64** %12, align 8
  store i64 %110, i64* %111, align 8
  br label %112

112:                                              ; preds = %109, %106
  br label %113

113:                                              ; preds = %112, %100
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %116 = call i32 @quicklistDelIndex(%struct.TYPE_7__* %114, %struct.TYPE_6__* %115, i8** %14)
  store i32 1, i32* %7, align 4
  br label %118

117:                                              ; preds = %73
  store i32 0, i32* %7, align 4
  br label %118

118:                                              ; preds = %117, %113, %71, %29
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i8* @ziplistIndex(i32, i32) #1

declare dso_local i64 @ziplistGet(i8*, i8**, i32*, i64*) #1

declare dso_local i32 @quicklistDelIndex(%struct.TYPE_7__*, %struct.TYPE_6__*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
