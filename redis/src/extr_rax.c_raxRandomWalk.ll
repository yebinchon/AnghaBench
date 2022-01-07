; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rax.c_raxRandomWalk.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rax.c_raxRandomWalk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__*, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_14__ = type { i32, i64, i64, i64 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_14__* }

@RAX_ITER_EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raxRandomWalk(%struct.TYPE_15__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__**, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @RAX_ITER_EOF, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  store i32 0, i32* %3, align 4
  br label %159

24:                                               ; preds = %2
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @log(i64 %32)
  %34 = call i64 @floor(i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = mul i64 %35, 2
  store i64 %36, i64* %6, align 8
  %37 = call i32 (...) @rand()
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %6, align 8
  %40 = urem i64 %38, %39
  %41 = add i64 1, %40
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %27, %24
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %7, align 8
  br label %46

46:                                               ; preds = %154, %42
  %47 = load i64, i64* %5, align 8
  %48 = icmp ugt i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %49, %46
  %56 = phi i1 [ true, %46 ], [ %54, %49 ]
  br i1 %56, label %57, label %155

57:                                               ; preds = %55
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %67

63:                                               ; preds = %57
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  br label %67

67:                                               ; preds = %63, %62
  %68 = phi i32 [ 1, %62 ], [ %66, %63 ]
  store i32 %68, i32* %8, align 4
  %69 = call i32 (...) @rand()
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = icmp ne %struct.TYPE_14__* %71, %76
  %78 = zext i1 %77 to i32
  %79 = add nsw i32 %70, %78
  %80 = srem i32 %69, %79
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %67
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = call %struct.TYPE_14__* @raxStackPop(i32* %86)
  store %struct.TYPE_14__* %87, %struct.TYPE_14__** %7, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  br label %97

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %92
  %98 = phi i32 [ %95, %92 ], [ 1, %96 ]
  store i32 %98, i32* %10, align 4
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @raxIteratorDelChars(%struct.TYPE_15__* %99, i32 %100)
  br label %146

102:                                              ; preds = %67
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %102
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @raxIteratorAddChars(%struct.TYPE_15__* %108, i64 %111, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %159

118:                                              ; preds = %107
  br label %131

119:                                              ; preds = %102
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %123, %125
  %127 = call i32 @raxIteratorAddChars(%struct.TYPE_15__* %120, i64 %126, i32 1)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %119
  store i32 0, i32* %3, align 4
  br label %159

130:                                              ; preds = %119
  br label %131

131:                                              ; preds = %130, %118
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %133 = call %struct.TYPE_14__** @raxNodeFirstChildPtr(%struct.TYPE_14__* %132)
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %133, i64 %135
  store %struct.TYPE_14__** %136, %struct.TYPE_14__*** %11, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %140 = call i32 @raxStackPush(i32* %138, %struct.TYPE_14__* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %131
  store i32 0, i32* %3, align 4
  br label %159

143:                                              ; preds = %131
  %144 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %11, align 8
  %145 = call i32 @memcpy(%struct.TYPE_14__** %7, %struct.TYPE_14__** %144, i32 8)
  br label %146

146:                                              ; preds = %143, %97
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i64, i64* %5, align 8
  %153 = add i64 %152, -1
  store i64 %153, i64* %5, align 8
  br label %154

154:                                              ; preds = %151, %146
  br label %46

155:                                              ; preds = %55
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  store %struct.TYPE_14__* %156, %struct.TYPE_14__** %158, align 8
  store i32 1, i32* %3, align 4
  br label %159

159:                                              ; preds = %155, %142, %129, %117, %18
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i64 @floor(i32) #1

declare dso_local i32 @log(i64) #1

declare dso_local i32 @rand(...) #1

declare dso_local %struct.TYPE_14__* @raxStackPop(i32*) #1

declare dso_local i32 @raxIteratorDelChars(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @raxIteratorAddChars(%struct.TYPE_15__*, i64, i32) #1

declare dso_local %struct.TYPE_14__** @raxNodeFirstChildPtr(%struct.TYPE_14__*) #1

declare dso_local i32 @raxStackPush(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__**, %struct.TYPE_14__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
