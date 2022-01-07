; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_karatsuba_sqr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_karatsuba_sqr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32* }

@MP_MEM = common dso_local global i32 0, align 4
@MP_OKAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_karatsuba_sqr(%struct.TYPE_19__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_19__, align 8
  %6 = alloca %struct.TYPE_19__, align 8
  %7 = alloca %struct.TYPE_19__, align 8
  %8 = alloca %struct.TYPE_19__, align 8
  %9 = alloca %struct.TYPE_19__, align 8
  %10 = alloca %struct.TYPE_19__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %16 = load i32, i32* @MP_MEM, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = ashr i32 %20, 1
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @mp_init_size(%struct.TYPE_19__* %5, i32 %22)
  %24 = load i32, i32* @MP_OKAY, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %188

27:                                               ; preds = %2
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sub nsw i32 %30, %31
  %33 = call i32 @mp_init_size(%struct.TYPE_19__* %6, i32 %32)
  %34 = load i32, i32* @MP_OKAY, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %186

37:                                               ; preds = %27
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %40, 2
  %42 = call i32 @mp_init_size(%struct.TYPE_19__* %7, i32 %41)
  %43 = load i32, i32* @MP_OKAY, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %184

46:                                               ; preds = %37
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 %49, 2
  %51 = call i32 @mp_init_size(%struct.TYPE_19__* %8, i32 %50)
  %52 = load i32, i32* @MP_OKAY, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %182

55:                                               ; preds = %46
  %56 = load i32, i32* %11, align 4
  %57 = mul nsw i32 %56, 2
  %58 = call i32 @mp_init_size(%struct.TYPE_19__* %9, i32 %57)
  %59 = load i32, i32* @MP_OKAY, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %180

62:                                               ; preds = %55
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 %65, %66
  %68 = mul nsw i32 %67, 2
  %69 = call i32 @mp_init_size(%struct.TYPE_19__* %10, i32 %68)
  %70 = load i32, i32* @MP_OKAY, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %178

73:                                               ; preds = %62
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %14, align 8
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %89, %73
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load i32*, i32** %15, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %15, align 8
  %86 = load i32, i32* %84, align 4
  %87 = load i32*, i32** %14, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %14, align 8
  store i32 %86, i32* %87, align 4
  br label %89

89:                                               ; preds = %83
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %79

92:                                               ; preds = %79
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %14, align 8
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %108, %92
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load i32*, i32** %15, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %15, align 8
  %105 = load i32, i32* %103, align 4
  %106 = load i32*, i32** %14, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %14, align 8
  store i32 %105, i32* %106, align 4
  br label %108

108:                                              ; preds = %102
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %96

111:                                              ; preds = %96
  %112 = load i32, i32* %11, align 4
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  store i32 %112, i32* %113, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sub nsw i32 %116, %117
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  store i32 %118, i32* %119, align 8
  %120 = call i32 @mp_clamp(%struct.TYPE_19__* %5)
  %121 = call i32 @mp_sqr(%struct.TYPE_19__* %5, %struct.TYPE_19__* %9)
  %122 = load i32, i32* @MP_OKAY, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %111
  br label %176

125:                                              ; preds = %111
  %126 = call i32 @mp_sqr(%struct.TYPE_19__* %6, %struct.TYPE_19__* %10)
  %127 = load i32, i32* @MP_OKAY, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  br label %176

130:                                              ; preds = %125
  %131 = call i32 @mp_sub(%struct.TYPE_19__* %6, %struct.TYPE_19__* %5, %struct.TYPE_19__* %7)
  %132 = load i32, i32* @MP_OKAY, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %176

135:                                              ; preds = %130
  %136 = call i32 @mp_sqr(%struct.TYPE_19__* %7, %struct.TYPE_19__* %7)
  %137 = load i32, i32* @MP_OKAY, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  br label %176

140:                                              ; preds = %135
  %141 = call i32 @s_mp_add(%struct.TYPE_19__* %9, %struct.TYPE_19__* %10, %struct.TYPE_19__* %8)
  %142 = load i32, i32* @MP_OKAY, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %176

145:                                              ; preds = %140
  %146 = call i32 @mp_sub(%struct.TYPE_19__* %8, %struct.TYPE_19__* %7, %struct.TYPE_19__* %7)
  %147 = load i32, i32* @MP_OKAY, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %176

150:                                              ; preds = %145
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @mp_lshd(%struct.TYPE_19__* %7, i32 %151)
  %153 = load i32, i32* @MP_OKAY, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %176

156:                                              ; preds = %150
  %157 = load i32, i32* %11, align 4
  %158 = mul nsw i32 %157, 2
  %159 = call i32 @mp_lshd(%struct.TYPE_19__* %10, i32 %158)
  %160 = load i32, i32* @MP_OKAY, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  br label %176

163:                                              ; preds = %156
  %164 = call i32 @mp_add(%struct.TYPE_19__* %9, %struct.TYPE_19__* %7, %struct.TYPE_19__* %7)
  %165 = load i32, i32* @MP_OKAY, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  br label %176

168:                                              ; preds = %163
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %170 = call i32 @mp_add(%struct.TYPE_19__* %7, %struct.TYPE_19__* %10, %struct.TYPE_19__* %169)
  %171 = load i32, i32* @MP_OKAY, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %176

174:                                              ; preds = %168
  %175 = load i32, i32* @MP_OKAY, align 4
  store i32 %175, i32* %12, align 4
  br label %176

176:                                              ; preds = %174, %173, %167, %162, %155, %149, %144, %139, %134, %129, %124
  %177 = call i32 @mp_clear(%struct.TYPE_19__* %10)
  br label %178

178:                                              ; preds = %176, %72
  %179 = call i32 @mp_clear(%struct.TYPE_19__* %9)
  br label %180

180:                                              ; preds = %178, %61
  %181 = call i32 @mp_clear(%struct.TYPE_19__* %8)
  br label %182

182:                                              ; preds = %180, %54
  %183 = call i32 @mp_clear(%struct.TYPE_19__* %7)
  br label %184

184:                                              ; preds = %182, %45
  %185 = call i32 @mp_clear(%struct.TYPE_19__* %6)
  br label %186

186:                                              ; preds = %184, %36
  %187 = call i32 @mp_clear(%struct.TYPE_19__* %5)
  br label %188

188:                                              ; preds = %186, %26
  %189 = load i32, i32* %12, align 4
  ret i32 %189
}

declare dso_local i32 @mp_init_size(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @mp_clamp(%struct.TYPE_19__*) #1

declare dso_local i32 @mp_sqr(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @mp_sub(%struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @s_mp_add(%struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @mp_lshd(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @mp_add(%struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @mp_clear(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
