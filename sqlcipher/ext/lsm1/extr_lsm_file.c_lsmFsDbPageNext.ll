; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_lsmFsDbPageNext.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_lsmFsDbPageNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i64, i32* }
%struct.TYPE_21__ = type { i64, i32, i32, i32*, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i64 }

@LSM_OK = common dso_local global i32 0, align 4
@PAGE_HASPREV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmFsDbPageNext(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1, i32 %2, %struct.TYPE_21__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_21__** %3, %struct.TYPE_21__*** %9, align 8
  %16 = load i32, i32* @LSM_OK, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  store %struct.TYPE_22__* %19, %struct.TYPE_22__** %11, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %12, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %25 = call i64 @fsSegmentRedirects(%struct.TYPE_22__* %23, %struct.TYPE_20__* %24)
  %26 = icmp eq i64 0, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %98

33:                                               ; preds = %4
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 6
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %95, %33
  %39 = load i32, i32* %8, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @fsNextPageOffset(%struct.TYPE_22__* %42, %struct.TYPE_20__* %43, i64 %44, i32 %45, i64* %12)
  store i32 %46, i32* %10, align 4
  br label %60

47:                                               ; preds = %38
  %48 = load i64, i64* %12, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i64 0, i64* %12, align 8
  br label %59

54:                                               ; preds = %47
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @fsGetPageBefore(%struct.TYPE_22__* %55, %struct.TYPE_20__* %56, i64 %57, i64* %12)
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %54, %53
  br label %60

60:                                               ; preds = %59, %41
  store i32 0, i32* %13, align 4
  %61 = load i64, i64* %12, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %60
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %68 = call i32 @fsPageGet(%struct.TYPE_22__* %64, %struct.TYPE_20__* %65, i64 %66, i32 0, %struct.TYPE_21__** %67, i32* %13)
  store i32 %68, i32* %10, align 4
  %69 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %69, align 8
  %71 = icmp eq %struct.TYPE_21__* %70, null
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @LSM_OK, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %79, label %76

76:                                               ; preds = %63
  %77 = load i32, i32* %13, align 4
  %78 = icmp sgt i32 %77, 0
  br label %79

79:                                               ; preds = %76, %63
  %80 = phi i1 [ true, %63 ], [ %78, %76 ]
  %81 = zext i1 %80 to i32
  %82 = icmp eq i32 %72, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  br label %87

85:                                               ; preds = %60
  %86 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %86, align 8
  br label %87

87:                                               ; preds = %85, %79
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %13, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @LSM_OK, align 4
  %94 = icmp eq i32 %92, %93
  br label %95

95:                                               ; preds = %91, %88
  %96 = phi i1 [ false, %88 ], [ %94, %91 ]
  br i1 %96, label %38, label %97

97:                                               ; preds = %95
  br label %199

98:                                               ; preds = %4
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %100 = icmp ne %struct.TYPE_20__* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  br label %106

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105, %101
  %107 = phi i32* [ %104, %101 ], [ null, %105 ]
  store i32* %107, i32** %14, align 8
  %108 = load i32, i32* %8, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %8, align 4
  %112 = icmp eq i32 %111, -1
  br label %113

113:                                              ; preds = %110, %106
  %114 = phi i1 [ true, %106 ], [ %112, %110 ]
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load i32, i32* %8, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %155

119:                                              ; preds = %113
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %121 = icmp ne %struct.TYPE_20__* %120, null
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load i64, i64* %12, align 8
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %123, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %129, align 8
  %130 = load i32, i32* @LSM_OK, align 4
  store i32 %130, i32* %5, align 4
  br label %201

131:                                              ; preds = %122, %119
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %133 = load i64, i64* %12, align 8
  %134 = call i64 @fsIsFirst(%struct.TYPE_22__* %132, i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %150

136:                                              ; preds = %131
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @PAGE_HASPREV, align 4
  %141 = and i32 %139, %140
  %142 = call i32 @assert(i32 %141)
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 -4
  %148 = call i32 @lsmGetU32(i32* %147)
  %149 = call i64 @fsLastPageOnBlock(%struct.TYPE_22__* %143, i32 %148)
  store i64 %149, i64* %12, align 8
  br label %153

150:                                              ; preds = %131
  %151 = load i64, i64* %12, align 8
  %152 = add nsw i64 %151, -1
  store i64 %152, i64* %12, align 8
  br label %153

153:                                              ; preds = %150, %136
  br label %154

154:                                              ; preds = %153
  br label %193

155:                                              ; preds = %113
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %157 = icmp ne %struct.TYPE_20__* %156, null
  br i1 %157, label %158, label %168

158:                                              ; preds = %155
  %159 = load i64, i64* %12, align 8
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %159, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  %165 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %165, align 8
  %166 = load i32, i32* @LSM_OK, align 4
  store i32 %166, i32* %5, align 4
  br label %201

167:                                              ; preds = %158
  br label %168

168:                                              ; preds = %167, %155
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %170 = load i64, i64* %12, align 8
  %171 = call i64 @fsIsLast(%struct.TYPE_22__* %169, i64 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %189

173:                                              ; preds = %168
  %174 = load i32*, i32** %14, align 8
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 3
  %177 = load i32*, i32** %176, align 8
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = sub nsw i32 %180, 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %177, i64 %182
  %184 = call i32 @lsmGetU32(i32* %183)
  %185 = call i32 @fsRedirectBlock(i32* %174, i32 %184)
  store i32 %185, i32* %15, align 4
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %187 = load i32, i32* %15, align 4
  %188 = call i64 @fsFirstPageOnBlock(%struct.TYPE_22__* %186, i32 %187)
  store i64 %188, i64* %12, align 8
  br label %192

189:                                              ; preds = %168
  %190 = load i64, i64* %12, align 8
  %191 = add nsw i64 %190, 1
  store i64 %191, i64* %12, align 8
  br label %192

192:                                              ; preds = %189, %173
  br label %193

193:                                              ; preds = %192, %154
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %196 = load i64, i64* %12, align 8
  %197 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %198 = call i32 @fsPageGet(%struct.TYPE_22__* %194, %struct.TYPE_20__* %195, i64 %196, i32 0, %struct.TYPE_21__** %197, i32* null)
  store i32 %198, i32* %10, align 4
  br label %199

199:                                              ; preds = %193, %97
  %200 = load i32, i32* %10, align 4
  store i32 %200, i32* %5, align 4
  br label %201

201:                                              ; preds = %199, %164, %128
  %202 = load i32, i32* %5, align 4
  ret i32 %202
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fsSegmentRedirects(%struct.TYPE_22__*, %struct.TYPE_20__*) #1

declare dso_local i32 @fsNextPageOffset(%struct.TYPE_22__*, %struct.TYPE_20__*, i64, i32, i64*) #1

declare dso_local i32 @fsGetPageBefore(%struct.TYPE_22__*, %struct.TYPE_20__*, i64, i64*) #1

declare dso_local i32 @fsPageGet(%struct.TYPE_22__*, %struct.TYPE_20__*, i64, i32, %struct.TYPE_21__**, i32*) #1

declare dso_local i64 @fsIsFirst(%struct.TYPE_22__*, i64) #1

declare dso_local i64 @fsLastPageOnBlock(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @lsmGetU32(i32*) #1

declare dso_local i64 @fsIsLast(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @fsRedirectBlock(i32*, i32) #1

declare dso_local i64 @fsFirstPageOnBlock(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
