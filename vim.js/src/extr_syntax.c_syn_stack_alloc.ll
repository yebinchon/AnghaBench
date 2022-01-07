; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_syntax.c_syn_stack_alloc.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_syntax.c_syn_stack_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@syn_buf = common dso_local global %struct.TYPE_8__* null, align 8
@SST_DIST = common dso_local global i32 0, align 4
@Rows = common dso_local global i32 0, align 4
@SST_MIN_ENTRIES = common dso_local global i64 0, align 8
@SST_MAX_ENTRIES = common dso_local global i64 0, align 8
@syn_block = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @syn_stack_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @syn_stack_alloc() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** @syn_buf, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SST_DIST, align 4
  %10 = sdiv i32 %8, %9
  %11 = load i32, i32* @Rows, align 4
  %12 = mul nsw i32 %11, 2
  %13 = add nsw i32 %10, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %1, align 8
  %15 = load i64, i64* %1, align 8
  %16 = load i64, i64* @SST_MIN_ENTRIES, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %0
  %19 = load i64, i64* @SST_MIN_ENTRIES, align 8
  store i64 %19, i64* %1, align 8
  br label %27

20:                                               ; preds = %0
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* @SST_MAX_ENTRIES, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i64, i64* @SST_MAX_ENTRIES, align 8
  store i64 %25, i64* %1, align 8
  br label %26

26:                                               ; preds = %24, %20
  br label %27

27:                                               ; preds = %26, %18
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** @syn_block, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %1, align 8
  %32 = mul nsw i64 %31, 2
  %33 = icmp sgt i64 %30, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @syn_block, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %1, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %220

40:                                               ; preds = %34, %27
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @syn_buf, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %1, align 8
  %46 = load i64, i64* %1, align 8
  %47 = load i64, i64* %1, align 8
  %48 = sdiv i64 %47, 2
  %49 = add nsw i64 %46, %48
  %50 = load i32, i32* @SST_DIST, align 4
  %51 = sext i32 %50 to i64
  %52 = sdiv i64 %49, %51
  %53 = load i32, i32* @Rows, align 4
  %54 = mul nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %52, %55
  store i64 %56, i64* %1, align 8
  %57 = load i64, i64* %1, align 8
  %58 = load i64, i64* @SST_MIN_ENTRIES, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %40
  %61 = load i64, i64* @SST_MIN_ENTRIES, align 8
  store i64 %61, i64* %1, align 8
  br label %69

62:                                               ; preds = %40
  %63 = load i64, i64* %1, align 8
  %64 = load i64, i64* @SST_MAX_ENTRIES, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i64, i64* @SST_MAX_ENTRIES, align 8
  store i64 %67, i64* %1, align 8
  br label %68

68:                                               ; preds = %66, %62
  br label %69

69:                                               ; preds = %68, %60
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** @syn_block, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = icmp ne %struct.TYPE_7__* %72, null
  br i1 %73, label %74, label %116

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %92, %74
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** @syn_block, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** @syn_block, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = sub nsw i64 %78, %82
  %84 = add nsw i64 %83, 2
  %85 = load i64, i64* %1, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %75
  %88 = call i64 (...) @syn_stack_cleanup()
  %89 = icmp ne i64 %88, 0
  br label %90

90:                                               ; preds = %87, %75
  %91 = phi i1 [ false, %75 ], [ %89, %87 ]
  br i1 %91, label %92, label %93

92:                                               ; preds = %90
  br label %75

93:                                               ; preds = %90
  %94 = load i64, i64* %1, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** @syn_block, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** @syn_block, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = sub nsw i64 %97, %101
  %103 = add nsw i64 %102, 2
  %104 = icmp slt i64 %94, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %93
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** @syn_block, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** @syn_block, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = sub nsw i64 %108, %112
  %114 = add nsw i64 %113, 2
  store i64 %114, i64* %1, align 8
  br label %115

115:                                              ; preds = %105, %93
  br label %116

116:                                              ; preds = %115, %69
  %117 = load i64, i64* %1, align 8
  %118 = mul i64 %117, 8
  %119 = trunc i64 %118 to i32
  %120 = call i64 @alloc_clear(i32 %119)
  %121 = inttoptr i64 %120 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %121, %struct.TYPE_7__** %4, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %123 = icmp eq %struct.TYPE_7__* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  br label %220

125:                                              ; preds = %116
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i64 -1
  store %struct.TYPE_7__* %127, %struct.TYPE_7__** %2, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** @syn_block, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = icmp ne %struct.TYPE_7__* %130, null
  br i1 %131, label %132, label %155

132:                                              ; preds = %125
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** @syn_block, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  store %struct.TYPE_7__* %135, %struct.TYPE_7__** %3, align 8
  br label %136

136:                                              ; preds = %150, %132
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %138 = icmp ne %struct.TYPE_7__* %137, null
  br i1 %138, label %139, label %154

139:                                              ; preds = %136
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 1
  store %struct.TYPE_7__* %141, %struct.TYPE_7__** %2, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %144 = bitcast %struct.TYPE_7__* %142 to i8*
  %145 = bitcast %struct.TYPE_7__* %143 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %144, i8* align 8 %145, i64 8, i1 false)
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 1
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  store %struct.TYPE_7__* %147, %struct.TYPE_7__** %149, align 8
  br label %150

150:                                              ; preds = %139
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  store %struct.TYPE_7__* %153, %struct.TYPE_7__** %3, align 8
  br label %136

154:                                              ; preds = %136
  br label %155

155:                                              ; preds = %154, %125
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i64 -1
  %159 = icmp ne %struct.TYPE_7__* %156, %158
  br i1 %159, label %160, label %180

160:                                              ; preds = %155
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %162, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** @syn_block, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 4
  store %struct.TYPE_7__* %163, %struct.TYPE_7__** %165, align 8
  %166 = load i64, i64* %1, align 8
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %169 = ptrtoint %struct.TYPE_7__* %167 to i64
  %170 = ptrtoint %struct.TYPE_7__* %168 to i64
  %171 = sub i64 %169, %170
  %172 = sdiv exact i64 %171, 8
  %173 = trunc i64 %172 to i32
  %174 = sext i32 %173 to i64
  %175 = sub nsw i64 %166, %174
  %176 = sub nsw i64 %175, 1
  %177 = trunc i64 %176 to i32
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** @syn_block, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 8
  br label %187

180:                                              ; preds = %155
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** @syn_block, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %182, align 8
  %183 = load i64, i64* %1, align 8
  %184 = trunc i64 %183 to i32
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** @syn_block, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 8
  br label %187

187:                                              ; preds = %180, %160
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i64 1
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** @syn_block, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 3
  store %struct.TYPE_7__* %189, %struct.TYPE_7__** %191, align 8
  br label %192

192:                                              ; preds = %199, %187
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 1
  store %struct.TYPE_7__* %194, %struct.TYPE_7__** %2, align 8
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %196 = load i64, i64* %1, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i64 %196
  %198 = icmp ult %struct.TYPE_7__* %194, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %192
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i64 1
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  store %struct.TYPE_7__* %201, %struct.TYPE_7__** %203, align 8
  br label %192

204:                                              ; preds = %192
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %206 = load i64, i64* %1, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i64 -1
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %209, align 8
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** @syn_block, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %211, align 8
  %213 = call i32 @vim_free(%struct.TYPE_7__* %212)
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** @syn_block, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 2
  store %struct.TYPE_7__* %214, %struct.TYPE_7__** %216, align 8
  %217 = load i64, i64* %1, align 8
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** @syn_block, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  store i64 %217, i64* %219, align 8
  br label %220

220:                                              ; preds = %124, %204, %34
  ret void
}

declare dso_local i64 @syn_stack_cleanup(...) #1

declare dso_local i64 @alloc_clear(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vim_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
