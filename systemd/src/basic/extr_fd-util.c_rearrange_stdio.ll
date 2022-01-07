; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_fd-util.c_rearrange_stdio.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_fd-util.c_rearrange_stdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.rearrange_stdio.copy_fd = private unnamed_addr constant [3 x i32] [i32 -1, i32 -1, i32 -1], align 4
@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@F_DUPFD_CLOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rearrange_stdio(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %19, align 4
  store i32 -1, i32* %10, align 4
  %21 = bitcast [3 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast ([3 x i32]* @__const.rearrange_stdio.copy_fd to i8*), i64 12, i1 false)
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br label %30

30:                                               ; preds = %27, %3
  %31 = phi i1 [ true, %3 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %82

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @O_RDWR, align 4
  br label %55

46:                                               ; preds = %41, %38
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @O_RDONLY, align 4
  br label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @O_WRONLY, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  br label %55

55:                                               ; preds = %53, %44
  %56 = phi i32 [ %45, %44 ], [ %54, %53 ]
  %57 = load i32, i32* @O_CLOEXEC, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @errno, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %8, align 4
  br label %183

65:                                               ; preds = %55
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 3
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @F_DUPFD_CLOEXEC, align 4
  %71 = call i32 @fcntl(i32 %69, i32 %70, i32 3)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @errno, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %8, align 4
  br label %183

77:                                               ; preds = %68
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @safe_close(i32 %78)
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %77, %65
  br label %82

82:                                               ; preds = %81, %35
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %138, %82
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %84, 3
  br i1 %85, label %86, label %141

86:                                               ; preds = %83
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %95
  store i32 %93, i32* %96, align 4
  br label %137

97:                                               ; preds = %86
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %136

104:                                              ; preds = %97
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %108, 3
  br i1 %109, label %110, label %136

110:                                              ; preds = %104
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @F_DUPFD_CLOEXEC, align 4
  %116 = call i32 @fcntl(i32 %114, i32 %115, i32 3)
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %118
  store i32 %116, i32* %119, align 4
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %110
  %126 = load i32, i32* @errno, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %8, align 4
  br label %183

128:                                              ; preds = %110
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %134
  store i32 %132, i32* %135, align 4
  br label %136

136:                                              ; preds = %128, %104, %97
  br label %137

137:                                              ; preds = %136, %92
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  br label %83

141:                                              ; preds = %83
  store i32 0, i32* %9, align 4
  br label %142

142:                                              ; preds = %179, %141
  %143 = load i32, i32* %9, align 4
  %144 = icmp slt i32 %143, 3
  br i1 %144, label %145, label %182

145:                                              ; preds = %142
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %145
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @fd_cloexec(i32 %153, i32 0)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %183

158:                                              ; preds = %152
  br label %178

159:                                              ; preds = %145
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = icmp sgt i32 %163, 2
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %9, align 4
  %172 = call i64 @dup2(i32 %170, i32 %171)
  %173 = icmp slt i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %159
  %175 = load i32, i32* @errno, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %8, align 4
  br label %183

177:                                              ; preds = %159
  br label %178

178:                                              ; preds = %177, %158
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %9, align 4
  br label %142

182:                                              ; preds = %142
  store i32 0, i32* %8, align 4
  br label %183

183:                                              ; preds = %182, %174, %157, %125, %74, %62
  %184 = load i32, i32* %4, align 4
  %185 = call i32 @safe_close_above_stdio(i32 %184)
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* %4, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %183
  %190 = load i32, i32* %5, align 4
  %191 = call i32 @safe_close_above_stdio(i32 %190)
  br label %192

192:                                              ; preds = %189, %183
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* %4, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %203

196:                                              ; preds = %192
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* %5, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load i32, i32* %6, align 4
  %202 = call i32 @safe_close_above_stdio(i32 %201)
  br label %203

203:                                              ; preds = %200, %196, %192
  store i32 0, i32* %9, align 4
  br label %204

204:                                              ; preds = %213, %203
  %205 = load i32, i32* %9, align 4
  %206 = icmp slt i32 %205, 3
  br i1 %206, label %207, label %216

207:                                              ; preds = %204
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @safe_close(i32 %211)
  br label %213

213:                                              ; preds = %207
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %9, align 4
  br label %204

216:                                              ; preds = %204
  %217 = load i32, i32* %10, align 4
  %218 = call i32 @safe_close_above_stdio(i32 %217)
  %219 = load i32, i32* %8, align 4
  ret i32 %219
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @fcntl(i32, i32, i32) #2

declare dso_local i32 @safe_close(i32) #2

declare dso_local i32 @fd_cloexec(i32, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @dup2(i32, i32) #2

declare dso_local i32 @safe_close_above_stdio(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
