; ModuleID = '/home/carl/AnghaBench/redis/src/extr_dict.c_dictGetSomeKeys.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_dict.c_dictGetSomeKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { %struct.TYPE_10__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dictGetSomeKeys(%struct.TYPE_11__* %0, %struct.TYPE_10__** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %10, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = call i32 @dictSize(%struct.TYPE_11__* %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = call i32 @dictSize(%struct.TYPE_11__* %21)
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %20, %3
  %24 = load i32, i32* %7, align 4
  %25 = mul i32 %24, 10
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %12, align 8
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %41, %23
  %28 = load i64, i64* %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = call i64 @dictIsRehashing(%struct.TYPE_11__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = call i32 @_dictRehashStep(%struct.TYPE_11__* %37)
  br label %40

39:                                               ; preds = %32
  br label %44

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %8, align 8
  br label %27

44:                                               ; preds = %39, %27
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = call i64 @dictIsRehashing(%struct.TYPE_11__* %45)
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 2, i32 1
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %9, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp ugt i64 %57, 1
  br i1 %58, label %59, label %75

59:                                               ; preds = %44
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i64 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %60, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %59
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %11, align 8
  br label %75

75:                                               ; preds = %68, %59, %44
  %76 = call i64 (...) @random()
  %77 = load i64, i64* %11, align 8
  %78 = and i64 %76, %77
  store i64 %78, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %79

79:                                               ; preds = %188, %75
  %80 = load i64, i64* %10, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = icmp ult i64 %80, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i64, i64* %12, align 8
  %86 = add i64 %85, -1
  store i64 %86, i64* %12, align 8
  %87 = icmp ne i64 %85, 0
  br label %88

88:                                               ; preds = %84, %79
  %89 = phi i1 [ false, %79 ], [ %87, %84 ]
  br i1 %89, label %90, label %193

90:                                               ; preds = %88
  store i64 0, i64* %8, align 8
  br label %91

91:                                               ; preds = %185, %90
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %188

95:                                               ; preds = %91
  %96 = load i64, i64* %9, align 8
  %97 = icmp eq i64 %96, 2
  br i1 %97, label %98, label %122

98:                                               ; preds = %95
  %99 = load i64, i64* %8, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %122

101:                                              ; preds = %98
  %102 = load i64, i64* %13, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ult i64 %102, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %101
  %108 = load i64, i64* %13, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i64 1
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp uge i64 %108, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %107
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %13, align 8
  br label %121

120:                                              ; preds = %107
  br label %185

121:                                              ; preds = %116
  br label %122

122:                                              ; preds = %121, %101, %98, %95
  %123 = load i64, i64* %13, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = load i64, i64* %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp uge i64 %123, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  br label %185

133:                                              ; preds = %122
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = load i64, i64* %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %139, align 8
  %141 = load i64, i64* %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %140, i64 %141
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  store %struct.TYPE_10__* %143, %struct.TYPE_10__** %15, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %145 = icmp eq %struct.TYPE_10__* %144, null
  br i1 %145, label %146, label %161

146:                                              ; preds = %133
  %147 = load i64, i64* %14, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %14, align 8
  %149 = load i64, i64* %14, align 8
  %150 = icmp uge i64 %149, 5
  br i1 %150, label %151, label %160

151:                                              ; preds = %146
  %152 = load i64, i64* %14, align 8
  %153 = load i32, i32* %7, align 4
  %154 = zext i32 %153 to i64
  %155 = icmp ugt i64 %152, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = call i64 (...) @random()
  %158 = load i64, i64* %11, align 8
  %159 = and i64 %157, %158
  store i64 %159, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %160

160:                                              ; preds = %156, %151, %146
  br label %184

161:                                              ; preds = %133
  store i64 0, i64* %14, align 8
  br label %162

162:                                              ; preds = %182, %161
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %164 = icmp ne %struct.TYPE_10__* %163, null
  br i1 %164, label %165, label %183

165:                                              ; preds = %162
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %167 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  store %struct.TYPE_10__* %166, %struct.TYPE_10__** %167, align 8
  %168 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %168, i32 1
  store %struct.TYPE_10__** %169, %struct.TYPE_10__*** %6, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  store %struct.TYPE_10__* %172, %struct.TYPE_10__** %15, align 8
  %173 = load i64, i64* %10, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %10, align 8
  %175 = load i64, i64* %10, align 8
  %176 = load i32, i32* %7, align 4
  %177 = zext i32 %176 to i64
  %178 = icmp eq i64 %175, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %165
  %180 = load i64, i64* %10, align 8
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %4, align 4
  br label %196

182:                                              ; preds = %165
  br label %162

183:                                              ; preds = %162
  br label %184

184:                                              ; preds = %183, %160
  br label %185

185:                                              ; preds = %184, %132, %120
  %186 = load i64, i64* %8, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %8, align 8
  br label %91

188:                                              ; preds = %91
  %189 = load i64, i64* %13, align 8
  %190 = add i64 %189, 1
  %191 = load i64, i64* %11, align 8
  %192 = and i64 %190, %191
  store i64 %192, i64* %13, align 8
  br label %79

193:                                              ; preds = %88
  %194 = load i64, i64* %10, align 8
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %4, align 4
  br label %196

196:                                              ; preds = %193, %179
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local i32 @dictSize(%struct.TYPE_11__*) #1

declare dso_local i64 @dictIsRehashing(%struct.TYPE_11__*) #1

declare dso_local i32 @_dictRehashStep(%struct.TYPE_11__*) #1

declare dso_local i64 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
