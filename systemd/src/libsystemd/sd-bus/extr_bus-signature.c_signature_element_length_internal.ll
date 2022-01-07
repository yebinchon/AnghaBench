; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-signature.c_signature_element_length_internal.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-signature.c_signature_element_length_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@SD_BUS_TYPE_VARIANT = common dso_local global i8 0, align 1
@SD_BUS_TYPE_ARRAY = common dso_local global i8 0, align 1
@SD_BUS_TYPE_STRUCT_BEGIN = common dso_local global i8 0, align 1
@SD_BUS_TYPE_STRUCT_END = common dso_local global i8 0, align 1
@SD_BUS_TYPE_DICT_ENTRY_BEGIN = common dso_local global i8 0, align 1
@SD_BUS_TYPE_DICT_ENTRY_END = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i64*)* @signature_element_length_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @signature_element_length_internal(i8* %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %193

24:                                               ; preds = %5
  %25 = load i64*, i64** %11, align 8
  %26 = call i32 @assert(i64* %25)
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @bus_type_is_basic(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8, i8* @SD_BUS_TYPE_VARIANT, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31, %24
  %39 = load i64*, i64** %11, align 8
  store i64 1, i64* %39, align 8
  store i32 0, i32* %6, align 4
  br label %193

40:                                               ; preds = %31
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* @SD_BUS_TYPE_ARRAY, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  %49 = icmp uge i32 %48, 32
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %193

53:                                               ; preds = %47
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i32, i32* %9, align 4
  %57 = add i32 %56, 1
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @signature_element_length_internal(i8* %55, i32 1, i32 %57, i32 %58, i64* %13)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %6, align 4
  br label %193

64:                                               ; preds = %53
  %65 = load i64, i64* %13, align 8
  %66 = add i64 %65, 1
  %67 = load i64*, i64** %11, align 8
  store i64 %66, i64* %67, align 8
  store i32 0, i32* %6, align 4
  br label %193

68:                                               ; preds = %40
  %69 = load i8*, i8** %7, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = load i8, i8* @SD_BUS_TYPE_STRUCT_BEGIN, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %123

75:                                               ; preds = %68
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  store i8* %77, i8** %14, align 8
  %78 = load i32, i32* %10, align 4
  %79 = icmp uge i32 %78, 32
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %193

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %101, %83
  %85 = load i8*, i8** %14, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = load i8, i8* @SD_BUS_TYPE_STRUCT_END, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %87, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %84
  %92 = load i8*, i8** %14, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = add i32 %94, 1
  %96 = call i32 @signature_element_length_internal(i8* %92, i32 0, i32 %93, i32 %95, i64* %15)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %6, align 4
  br label %193

101:                                              ; preds = %91
  %102 = load i64, i64* %15, align 8
  %103 = load i8*, i8** %14, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 %102
  store i8* %104, i8** %14, align 8
  br label %84

105:                                              ; preds = %84
  %106 = load i8*, i8** %14, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = icmp slt i64 %110, 2
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %6, align 4
  br label %193

115:                                              ; preds = %105
  %116 = load i8*, i8** %14, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = ptrtoint i8* %116 to i64
  %119 = ptrtoint i8* %117 to i64
  %120 = sub i64 %118, %119
  %121 = add nsw i64 %120, 1
  %122 = load i64*, i64** %11, align 8
  store i64 %121, i64* %122, align 8
  store i32 0, i32* %6, align 4
  br label %193

123:                                              ; preds = %68
  %124 = load i8*, i8** %7, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = load i8, i8* @SD_BUS_TYPE_DICT_ENTRY_BEGIN, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %190

130:                                              ; preds = %123
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %190

133:                                              ; preds = %130
  %134 = load i8*, i8** %7, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  store i8* %135, i8** %16, align 8
  store i32 0, i32* %17, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp uge i32 %136, 32
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %6, align 4
  br label %193

141:                                              ; preds = %133
  br label %142

142:                                              ; preds = %170, %141
  %143 = load i8*, i8** %16, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = load i8, i8* @SD_BUS_TYPE_DICT_ENTRY_END, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp ne i32 %145, %147
  br i1 %148, label %149, label %176

149:                                              ; preds = %142
  %150 = load i32, i32* %17, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %149
  %153 = load i8*, i8** %16, align 8
  %154 = load i8, i8* %153, align 1
  %155 = call i64 @bus_type_is_basic(i8 signext %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %152
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %6, align 4
  br label %193

160:                                              ; preds = %152, %149
  %161 = load i8*, i8** %16, align 8
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %10, align 4
  %164 = add i32 %163, 1
  %165 = call i32 @signature_element_length_internal(i8* %161, i32 0, i32 %162, i32 %164, i64* %18)
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %12, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %160
  %169 = load i32, i32* %12, align 4
  store i32 %169, i32* %6, align 4
  br label %193

170:                                              ; preds = %160
  %171 = load i64, i64* %18, align 8
  %172 = load i8*, i8** %16, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 %171
  store i8* %173, i8** %16, align 8
  %174 = load i32, i32* %17, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %17, align 4
  br label %142

176:                                              ; preds = %142
  %177 = load i32, i32* %17, align 4
  %178 = icmp ne i32 %177, 2
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %6, align 4
  br label %193

182:                                              ; preds = %176
  %183 = load i8*, i8** %16, align 8
  %184 = load i8*, i8** %7, align 8
  %185 = ptrtoint i8* %183 to i64
  %186 = ptrtoint i8* %184 to i64
  %187 = sub i64 %185, %186
  %188 = add nsw i64 %187, 1
  %189 = load i64*, i64** %11, align 8
  store i64 %188, i64* %189, align 8
  store i32 0, i32* %6, align 4
  br label %193

190:                                              ; preds = %130, %123
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %6, align 4
  br label %193

193:                                              ; preds = %190, %182, %179, %168, %157, %138, %115, %112, %99, %80, %64, %62, %50, %38, %21
  %194 = load i32, i32* %6, align 4
  ret i32 %194
}

declare dso_local i32 @assert(i64*) #1

declare dso_local i64 @bus_type_is_basic(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
