; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_insert.c_sqlite3OpenTableAndIndices.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_insert.c_sqlite3OpenTableAndIndices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_17__*, i32, i32 }
%struct.TYPE_17__ = type { i64, i32, i32, %struct.TYPE_17__* }

@OP_OpenRead = common dso_local global i32 0, align 4
@OP_OpenWrite = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3OpenTableAndIndices(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i32 %2, i64 %3, i32 %4, i64* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_17__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i64* %5, i64** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @OP_OpenRead, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @OP_OpenWrite, align 4
  %30 = icmp eq i32 %28, %29
  br label %31

31:                                               ; preds = %27, %8
  %32 = phi i1 [ true, %8 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @OP_OpenWrite, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i64, i64* %13, align 8
  %40 = icmp eq i64 %39, 0
  br label %41

41:                                               ; preds = %38, %31
  %42 = phi i1 [ true, %31 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %46 = call i64 @IsVirtual(%struct.TYPE_15__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %201

49:                                               ; preds = %41
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @sqlite3SchemaToIndex(i32 %52, i64 %55)
  store i32 %56, i32* %19, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %58 = call i32* @sqlite3GetVdbe(%struct.TYPE_16__* %57)
  store i32* %58, i32** %22, align 8
  %59 = load i32*, i32** %22, align 8
  %60 = icmp ne i32* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* %14, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %49
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %65, %49
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  store i32 %70, i32* %20, align 4
  %72 = load i32*, i32** %16, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* %20, align 4
  %76 = load i32*, i32** %16, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %69
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %79 = call i64 @HasRowid(%struct.TYPE_15__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %77
  %82 = load i64*, i64** %15, align 8
  %83 = icmp eq i64* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %81
  %85 = load i64*, i64** %15, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84, %81
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %91 = load i32, i32* %20, align 4
  %92 = load i32, i32* %19, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @sqlite3OpenTable(%struct.TYPE_16__* %90, i32 %91, i32 %92, %struct.TYPE_15__* %93, i32 %94)
  br label %110

96:                                               ; preds = %84, %77
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %98 = load i32, i32* %19, align 4
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @OP_OpenWrite, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @sqlite3TableLock(%struct.TYPE_16__* %97, i32 %98, i32 %101, i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %96, %89
  %111 = load i32*, i32** %17, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* %14, align 4
  %115 = load i32*, i32** %17, align 8
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %110
  store i32 0, i32* %18, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %118, align 8
  store %struct.TYPE_17__* %119, %struct.TYPE_17__** %21, align 8
  br label %120

120:                                              ; preds = %183, %116
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %122 = icmp ne %struct.TYPE_17__* %121, null
  br i1 %122, label %123, label %189

123:                                              ; preds = %120
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %14, align 4
  store i32 %124, i32* %23, align 4
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %128, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %136 = call i64 @IsPrimaryKeyIndex(%struct.TYPE_17__* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %123
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %140 = call i64 @HasRowid(%struct.TYPE_15__* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %138
  %143 = load i32*, i32** %16, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32, i32* %23, align 4
  %147 = load i32*, i32** %16, align 8
  store i32 %146, i32* %147, align 4
  br label %148

148:                                              ; preds = %145, %142
  store i64 0, i64* %13, align 8
  br label %149

149:                                              ; preds = %148, %138, %123
  %150 = load i64*, i64** %15, align 8
  %151 = icmp eq i64* %150, null
  br i1 %151, label %160, label %152

152:                                              ; preds = %149
  %153 = load i64*, i64** %15, align 8
  %154 = load i32, i32* %18, align 4
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %153, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %182

160:                                              ; preds = %152, %149
  %161 = load i32*, i32** %22, align 8
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %23, align 4
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %19, align 4
  %168 = call i32 @sqlite3VdbeAddOp3(i32* %161, i32 %162, i32 %163, i32 %166, i32 %167)
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %171 = call i32 @sqlite3VdbeSetP4KeyInfo(%struct.TYPE_16__* %169, %struct.TYPE_17__* %170)
  %172 = load i32*, i32** %22, align 8
  %173 = load i64, i64* %13, align 8
  %174 = call i32 @sqlite3VdbeChangeP5(i32* %172, i64 %173)
  %175 = load i32*, i32** %22, align 8
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = inttoptr i64 %179 to i32*
  %181 = call i32 @VdbeComment(i32* %180)
  br label %182

182:                                              ; preds = %160, %152
  br label %183

183:                                              ; preds = %182
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 3
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %185, align 8
  store %struct.TYPE_17__* %186, %struct.TYPE_17__** %21, align 8
  %187 = load i32, i32* %18, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %18, align 4
  br label %120

189:                                              ; preds = %120
  %190 = load i32, i32* %14, align 4
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp sgt i32 %190, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %189
  %196 = load i32, i32* %14, align 4
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 4
  br label %199

199:                                              ; preds = %195, %189
  %200 = load i32, i32* %18, align 4
  store i32 %200, i32* %9, align 4
  br label %201

201:                                              ; preds = %199, %48
  %202 = load i32, i32* %9, align 4
  ret i32 %202
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @IsVirtual(%struct.TYPE_15__*) #1

declare dso_local i32 @sqlite3SchemaToIndex(i32, i64) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_16__*) #1

declare dso_local i64 @HasRowid(%struct.TYPE_15__*) #1

declare dso_local i32 @sqlite3OpenTable(%struct.TYPE_16__*, i32, i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @sqlite3TableLock(%struct.TYPE_16__*, i32, i32, i32, i32) #1

declare dso_local i64 @IsPrimaryKeyIndex(%struct.TYPE_17__*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeSetP4KeyInfo(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i64) #1

declare dso_local i32 @VdbeComment(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
