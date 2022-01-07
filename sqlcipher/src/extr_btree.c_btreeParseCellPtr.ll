; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_btreeParseCellPtr.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_btreeParseCellPtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32*, i32, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, %struct.TYPE_10__*)* @btreeParseCellPtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btreeParseCellPtr(%struct.TYPE_9__* %0, i32* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sqlite3_mutex_held(i32 %16)
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br label %28

28:                                               ; preds = %23, %3
  %29 = phi i1 [ true, %3 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32*, i32** %5, align 8
  store i32* %42, i32** %7, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp sge i32 %45, 128
  br i1 %46, label %47, label %71

47:                                               ; preds = %28
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 8
  store i32* %49, i32** %10, align 8
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, 127
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %68, %47
  %53 = load i32, i32* %8, align 4
  %54 = shl i32 %53, 7
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 127
  %59 = or i32 %54, %58
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %52
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %62, 128
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32*, i32** %7, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = icmp ult i32* %65, %66
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i1 [ false, %60 ], [ %67, %64 ]
  br i1 %69, label %52, label %70

70:                                               ; preds = %68
  br label %71

71:                                               ; preds = %70, %28
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %7, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp sge i32 %76, 128
  br i1 %77, label %78, label %108

78:                                               ; preds = %71
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 7
  store i32* %80, i32** %11, align 8
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, 127
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %78, %106
  %84 = load i32, i32* %9, align 4
  %85 = shl i32 %84, 7
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %7, align 8
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 127
  %90 = or i32 %85, %89
  store i32 %90, i32* %9, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %92, 128
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %107

95:                                               ; preds = %83
  %96 = load i32*, i32** %7, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = icmp uge i32* %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load i32, i32* %9, align 4
  %101 = shl i32 %100, 8
  %102 = load i32*, i32** %7, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %7, align 8
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %101, %104
  store i32 %105, i32* %9, align 4
  br label %107

106:                                              ; preds = %95
  br label %83

107:                                              ; preds = %99, %94
  br label %108

108:                                              ; preds = %107, %71
  %109 = load i32*, i32** %7, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %7, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  store i32* %117, i32** %119, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %120, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @testcase(i32 %125)
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  %132 = icmp eq i32 %127, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @testcase(i32 %133)
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = icmp sle i32 %135, %138
  br i1 %139, label %140, label %167

140:                                              ; preds = %108
  %141 = load i32, i32* %8, align 4
  %142 = load i32*, i32** %7, align 8
  %143 = load i32*, i32** %5, align 8
  %144 = ptrtoint i32* %142 to i64
  %145 = ptrtoint i32* %143 to i64
  %146 = sub i64 %144, %145
  %147 = sdiv exact i64 %146, 4
  %148 = inttoptr i64 %147 to i8*
  %149 = sext i32 %141 to i64
  %150 = getelementptr i8, i8* %148, i64 %149
  %151 = ptrtoint i8* %150 to i32
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = icmp slt i32 %156, 4
  br i1 %157, label %158, label %161

158:                                              ; preds = %140
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 2
  store i32 4, i32* %160, align 8
  br label %161

161:                                              ; preds = %158, %140
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = inttoptr i64 %163 to i8*
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 3
  store i8* %164, i8** %166, align 8
  br label %172

167:                                              ; preds = %108
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %169 = load i32*, i32** %5, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %171 = call i32 @btreeParseCellAdjustSizeForOverflow(%struct.TYPE_9__* %168, i32* %169, %struct.TYPE_10__* %170)
  br label %172

172:                                              ; preds = %167, %161
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @btreeParseCellAdjustSizeForOverflow(%struct.TYPE_9__*, i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
