; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_invmod_slow.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_invmod_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_42__ = type { i64 }

@MP_NEG = common dso_local global i64 0, align 8
@MP_VAL = common dso_local global i32 0, align 4
@MP_OKAY = common dso_local global i32 0, align 4
@MP_LT = common dso_local global i64 0, align 8
@MP_EQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_invmod_slow(%struct.TYPE_42__* %0, %struct.TYPE_42__* %1, %struct.TYPE_42__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_42__*, align 8
  %6 = alloca %struct.TYPE_42__*, align 8
  %7 = alloca %struct.TYPE_42__*, align 8
  %8 = alloca %struct.TYPE_42__, align 8
  %9 = alloca %struct.TYPE_42__, align 8
  %10 = alloca %struct.TYPE_42__, align 8
  %11 = alloca %struct.TYPE_42__, align 8
  %12 = alloca %struct.TYPE_42__, align 8
  %13 = alloca %struct.TYPE_42__, align 8
  %14 = alloca %struct.TYPE_42__, align 8
  %15 = alloca %struct.TYPE_42__, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_42__* %0, %struct.TYPE_42__** %5, align 8
  store %struct.TYPE_42__* %1, %struct.TYPE_42__** %6, align 8
  store %struct.TYPE_42__* %2, %struct.TYPE_42__** %7, align 8
  %17 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MP_NEG, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %24 = call i64 @mp_iszero(%struct.TYPE_42__* %23)
  %25 = icmp eq i64 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %3
  %27 = load i32, i32* @MP_VAL, align 4
  store i32 %27, i32* %4, align 4
  br label %219

28:                                               ; preds = %22
  %29 = call i32 @mp_init_multi(%struct.TYPE_42__* %8, %struct.TYPE_42__* %9, %struct.TYPE_42__* %10, %struct.TYPE_42__* %11, %struct.TYPE_42__* %12, %struct.TYPE_42__* %13, %struct.TYPE_42__* %14, %struct.TYPE_42__* %15, i32* null)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* @MP_OKAY, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %4, align 4
  br label %219

34:                                               ; preds = %28
  %35 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %36 = call i32 @mp_copy(%struct.TYPE_42__* %35, %struct.TYPE_42__* %8)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* @MP_OKAY, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %216

40:                                               ; preds = %34
  %41 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %42 = call i32 @mp_copy(%struct.TYPE_42__* %41, %struct.TYPE_42__* %9)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* @MP_OKAY, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %216

46:                                               ; preds = %40
  %47 = call i32 @mp_iseven(%struct.TYPE_42__* %8)
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = call i32 @mp_iseven(%struct.TYPE_42__* %9)
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @MP_VAL, align 4
  store i32 %53, i32* %16, align 4
  br label %216

54:                                               ; preds = %49, %46
  %55 = call i32 @mp_copy(%struct.TYPE_42__* %8, %struct.TYPE_42__* %10)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* @MP_OKAY, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %216

59:                                               ; preds = %54
  %60 = call i32 @mp_copy(%struct.TYPE_42__* %9, %struct.TYPE_42__* %11)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* @MP_OKAY, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %216

64:                                               ; preds = %59
  %65 = call i32 @mp_set(%struct.TYPE_42__* %12, i32 1)
  %66 = call i32 @mp_set(%struct.TYPE_42__* %15, i32 1)
  br label %67

67:                                               ; preds = %180, %64
  br label %68

68:                                               ; preds = %103, %67
  %69 = call i32 @mp_iseven(%struct.TYPE_42__* %10)
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %104

71:                                               ; preds = %68
  %72 = call i32 @mp_div_2(%struct.TYPE_42__* %10, %struct.TYPE_42__* %10)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* @MP_OKAY, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %216

76:                                               ; preds = %71
  %77 = call i32 @mp_isodd(%struct.TYPE_42__* %12)
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = call i32 @mp_isodd(%struct.TYPE_42__* %13)
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %93

82:                                               ; preds = %79, %76
  %83 = call i32 @mp_add(%struct.TYPE_42__* %12, %struct.TYPE_42__* %9, %struct.TYPE_42__* %12)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* @MP_OKAY, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %216

87:                                               ; preds = %82
  %88 = call i32 @mp_sub(%struct.TYPE_42__* %13, %struct.TYPE_42__* %8, %struct.TYPE_42__* %13)
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* @MP_OKAY, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %216

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %79
  %94 = call i32 @mp_div_2(%struct.TYPE_42__* %12, %struct.TYPE_42__* %12)
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* @MP_OKAY, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %216

98:                                               ; preds = %93
  %99 = call i32 @mp_div_2(%struct.TYPE_42__* %13, %struct.TYPE_42__* %13)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* @MP_OKAY, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %216

103:                                              ; preds = %98
  br label %68

104:                                              ; preds = %68
  br label %105

105:                                              ; preds = %140, %104
  %106 = call i32 @mp_iseven(%struct.TYPE_42__* %11)
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %141

108:                                              ; preds = %105
  %109 = call i32 @mp_div_2(%struct.TYPE_42__* %11, %struct.TYPE_42__* %11)
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* @MP_OKAY, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %216

113:                                              ; preds = %108
  %114 = call i32 @mp_isodd(%struct.TYPE_42__* %14)
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = call i32 @mp_isodd(%struct.TYPE_42__* %15)
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %130

119:                                              ; preds = %116, %113
  %120 = call i32 @mp_add(%struct.TYPE_42__* %14, %struct.TYPE_42__* %9, %struct.TYPE_42__* %14)
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* @MP_OKAY, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %216

124:                                              ; preds = %119
  %125 = call i32 @mp_sub(%struct.TYPE_42__* %15, %struct.TYPE_42__* %8, %struct.TYPE_42__* %15)
  store i32 %125, i32* %16, align 4
  %126 = load i32, i32* @MP_OKAY, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %216

129:                                              ; preds = %124
  br label %130

130:                                              ; preds = %129, %116
  %131 = call i32 @mp_div_2(%struct.TYPE_42__* %14, %struct.TYPE_42__* %14)
  store i32 %131, i32* %16, align 4
  %132 = load i32, i32* @MP_OKAY, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %216

135:                                              ; preds = %130
  %136 = call i32 @mp_div_2(%struct.TYPE_42__* %15, %struct.TYPE_42__* %15)
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* @MP_OKAY, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  br label %216

140:                                              ; preds = %135
  br label %105

141:                                              ; preds = %105
  %142 = call i64 @mp_cmp(%struct.TYPE_42__* %10, %struct.TYPE_42__* %11)
  %143 = load i64, i64* @MP_LT, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %161

145:                                              ; preds = %141
  %146 = call i32 @mp_sub(%struct.TYPE_42__* %10, %struct.TYPE_42__* %11, %struct.TYPE_42__* %10)
  store i32 %146, i32* %16, align 4
  %147 = load i32, i32* @MP_OKAY, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %216

150:                                              ; preds = %145
  %151 = call i32 @mp_sub(%struct.TYPE_42__* %12, %struct.TYPE_42__* %14, %struct.TYPE_42__* %12)
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* @MP_OKAY, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  br label %216

155:                                              ; preds = %150
  %156 = call i32 @mp_sub(%struct.TYPE_42__* %13, %struct.TYPE_42__* %15, %struct.TYPE_42__* %13)
  store i32 %156, i32* %16, align 4
  %157 = load i32, i32* @MP_OKAY, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  br label %216

160:                                              ; preds = %155
  br label %177

161:                                              ; preds = %141
  %162 = call i32 @mp_sub(%struct.TYPE_42__* %11, %struct.TYPE_42__* %10, %struct.TYPE_42__* %11)
  store i32 %162, i32* %16, align 4
  %163 = load i32, i32* @MP_OKAY, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  br label %216

166:                                              ; preds = %161
  %167 = call i32 @mp_sub(%struct.TYPE_42__* %14, %struct.TYPE_42__* %12, %struct.TYPE_42__* %14)
  store i32 %167, i32* %16, align 4
  %168 = load i32, i32* @MP_OKAY, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  br label %216

171:                                              ; preds = %166
  %172 = call i32 @mp_sub(%struct.TYPE_42__* %15, %struct.TYPE_42__* %13, %struct.TYPE_42__* %15)
  store i32 %172, i32* %16, align 4
  %173 = load i32, i32* @MP_OKAY, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  br label %216

176:                                              ; preds = %171
  br label %177

177:                                              ; preds = %176, %160
  %178 = call i64 @mp_iszero(%struct.TYPE_42__* %10)
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  br label %67

181:                                              ; preds = %177
  %182 = call i64 @mp_cmp_d(%struct.TYPE_42__* %11, i32 1)
  %183 = load i64, i64* @MP_EQ, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = load i32, i32* @MP_VAL, align 4
  store i32 %186, i32* %16, align 4
  br label %216

187:                                              ; preds = %181
  br label %188

188:                                              ; preds = %198, %187
  %189 = call i64 @mp_cmp_d(%struct.TYPE_42__* %14, i32 0)
  %190 = load i64, i64* @MP_LT, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %188
  %193 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %194 = call i32 @mp_add(%struct.TYPE_42__* %14, %struct.TYPE_42__* %193, %struct.TYPE_42__* %14)
  store i32 %194, i32* %16, align 4
  %195 = load i32, i32* @MP_OKAY, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  br label %216

198:                                              ; preds = %192
  br label %188

199:                                              ; preds = %188
  br label %200

200:                                              ; preds = %211, %199
  %201 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %202 = call i64 @mp_cmp_mag(%struct.TYPE_42__* %14, %struct.TYPE_42__* %201)
  %203 = load i64, i64* @MP_LT, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %200
  %206 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %207 = call i32 @mp_sub(%struct.TYPE_42__* %14, %struct.TYPE_42__* %206, %struct.TYPE_42__* %14)
  store i32 %207, i32* %16, align 4
  %208 = load i32, i32* @MP_OKAY, align 4
  %209 = icmp ne i32 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  br label %216

211:                                              ; preds = %205
  br label %200

212:                                              ; preds = %200
  %213 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %214 = call i32 @mp_exch(%struct.TYPE_42__* %14, %struct.TYPE_42__* %213)
  %215 = load i32, i32* @MP_OKAY, align 4
  store i32 %215, i32* %16, align 4
  br label %216

216:                                              ; preds = %212, %210, %197, %185, %175, %170, %165, %159, %154, %149, %139, %134, %128, %123, %112, %102, %97, %91, %86, %75, %63, %58, %52, %45, %39
  %217 = call i32 @mp_clear_multi(%struct.TYPE_42__* %8, %struct.TYPE_42__* %9, %struct.TYPE_42__* %10, %struct.TYPE_42__* %11, %struct.TYPE_42__* %12, %struct.TYPE_42__* %13, %struct.TYPE_42__* %14, %struct.TYPE_42__* %15, i32* null)
  %218 = load i32, i32* %16, align 4
  store i32 %218, i32* %4, align 4
  br label %219

219:                                              ; preds = %216, %32, %26
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local i64 @mp_iszero(%struct.TYPE_42__*) #1

declare dso_local i32 @mp_init_multi(%struct.TYPE_42__*, %struct.TYPE_42__*, %struct.TYPE_42__*, %struct.TYPE_42__*, %struct.TYPE_42__*, %struct.TYPE_42__*, %struct.TYPE_42__*, %struct.TYPE_42__*, i32*) #1

declare dso_local i32 @mp_copy(%struct.TYPE_42__*, %struct.TYPE_42__*) #1

declare dso_local i32 @mp_iseven(%struct.TYPE_42__*) #1

declare dso_local i32 @mp_set(%struct.TYPE_42__*, i32) #1

declare dso_local i32 @mp_div_2(%struct.TYPE_42__*, %struct.TYPE_42__*) #1

declare dso_local i32 @mp_isodd(%struct.TYPE_42__*) #1

declare dso_local i32 @mp_add(%struct.TYPE_42__*, %struct.TYPE_42__*, %struct.TYPE_42__*) #1

declare dso_local i32 @mp_sub(%struct.TYPE_42__*, %struct.TYPE_42__*, %struct.TYPE_42__*) #1

declare dso_local i64 @mp_cmp(%struct.TYPE_42__*, %struct.TYPE_42__*) #1

declare dso_local i64 @mp_cmp_d(%struct.TYPE_42__*, i32) #1

declare dso_local i64 @mp_cmp_mag(%struct.TYPE_42__*, %struct.TYPE_42__*) #1

declare dso_local i32 @mp_exch(%struct.TYPE_42__*, %struct.TYPE_42__*) #1

declare dso_local i32 @mp_clear_multi(%struct.TYPE_42__*, %struct.TYPE_42__*, %struct.TYPE_42__*, %struct.TYPE_42__*, %struct.TYPE_42__*, %struct.TYPE_42__*, %struct.TYPE_42__*, %struct.TYPE_42__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
