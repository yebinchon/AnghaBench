; ModuleID = '/home/carl/AnghaBench/systemd/src/cgtop/extr_cgtop.c_group_compare.c'
source_filename = "/home/carl/AnghaBench/systemd/src/cgtop/extr_cgtop.c_group_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64, i32, i64, i32, i64, i64, i32, i64 }

@arg_order = common dso_local global i32 0, align 4
@arg_recursive = common dso_local global i64 0, align 8
@arg_cpu_type = common dso_local global i32 0, align 4
@CPU_PERCENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__**, %struct.TYPE_4__**)* @group_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @group_compare(%struct.TYPE_4__** %0, %struct.TYPE_4__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %5, align 8
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %6, align 8
  %11 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %7, align 8
  %13 = load i32, i32* @arg_order, align 4
  %14 = icmp ne i32 %13, 128
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* @arg_recursive, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %15, %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @empty_to_root(i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @empty_to_root(i32 %25)
  %27 = call i64 @path_startswith(i32 %22, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %232

30:                                               ; preds = %18
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @empty_to_root(i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @empty_to_root(i32 %37)
  %39 = call i64 @path_startswith(i32 %34, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %232

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %15
  %44 = load i32, i32* @arg_order, align 4
  switch i32 %44, label %224 [
    i32 129, label %45
    i32 132, label %46
    i32 128, label %102
    i32 130, label %140
    i32 131, label %178
  ]

45:                                               ; preds = %43
  br label %224

46:                                               ; preds = %43
  %47 = load i32, i32* @arg_cpu_type, align 4
  %48 = load i32, i32* @CPU_PERCENT, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %88

50:                                               ; preds = %46
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %50
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %55
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 10
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 10
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @CMP(i64 %63, i64 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %232

72:                                               ; preds = %60
  br label %87

73:                                               ; preds = %55, %50
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 -1, i32* %3, align 4
  br label %232

79:                                               ; preds = %73
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 9
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 1, i32* %3, align 4
  br label %232

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86, %72
  br label %101

88:                                               ; preds = %46
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 8
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 8
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @CMP(i64 %91, i64 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %3, align 4
  br label %232

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100, %87
  br label %224

102:                                              ; preds = %43
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %125

107:                                              ; preds = %102
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %107
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 7
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 7
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @CMP(i64 %115, i64 %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %112
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %3, align 4
  br label %232

124:                                              ; preds = %112
  br label %139

125:                                              ; preds = %107, %102
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  store i32 -1, i32* %3, align 4
  br label %232

131:                                              ; preds = %125
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  store i32 1, i32* %3, align 4
  br label %232

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %137
  br label %139

139:                                              ; preds = %138, %124
  br label %224

140:                                              ; preds = %43
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %163

145:                                              ; preds = %140
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %145
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @CMP(i64 %153, i64 %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %150
  %161 = load i32, i32* %8, align 4
  store i32 %161, i32* %3, align 4
  br label %232

162:                                              ; preds = %150
  br label %177

163:                                              ; preds = %145, %140
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  store i32 -1, i32* %3, align 4
  br label %232

169:                                              ; preds = %163
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  store i32 1, i32* %3, align 4
  br label %232

175:                                              ; preds = %169
  br label %176

176:                                              ; preds = %175
  br label %177

177:                                              ; preds = %176, %162
  br label %224

178:                                              ; preds = %43
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %209

183:                                              ; preds = %178
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %209

188:                                              ; preds = %183
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %191, %194
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %198, %201
  %203 = call i32 @CMP(i64 %195, i64 %202)
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %8, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %188
  %207 = load i32, i32* %8, align 4
  store i32 %207, i32* %3, align 4
  br label %232

208:                                              ; preds = %188
  br label %223

209:                                              ; preds = %183, %178
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  store i32 -1, i32* %3, align 4
  br label %232

215:                                              ; preds = %209
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  store i32 1, i32* %3, align 4
  br label %232

221:                                              ; preds = %215
  br label %222

222:                                              ; preds = %221
  br label %223

223:                                              ; preds = %222, %208
  br label %224

224:                                              ; preds = %223, %43, %177, %139, %101, %45
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @path_compare(i32 %227, i32 %230)
  store i32 %231, i32* %3, align 4
  br label %232

232:                                              ; preds = %224, %220, %214, %206, %174, %168, %160, %136, %130, %122, %98, %84, %78, %70, %41, %29
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

declare dso_local i64 @path_startswith(i32, i32) #1

declare dso_local i32 @empty_to_root(i32) #1

declare dso_local i32 @CMP(i64, i64) #1

declare dso_local i32 @path_compare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
