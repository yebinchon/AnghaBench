; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_parser.c_get_data_from_asn1_internal.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_parser.c_get_data_from_asn1_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"get_data_from_asn1: Long form tags are unsupported\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"get_data_from_asn1: Length fields larger than 2 bytes are unsupported\00", align 1
@.str.2 = private unnamed_addr constant [86 x i8] c"get_data_from_asn1: Overflow error (computed length %d is larger than remaining data)\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i8*, i64, i32, i8**, i64*, i32*)* @get_data_from_asn1_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_data_from_asn1_internal(i32* %0, i64 %1, i8* %2, i64 %3, i32 %4, i8** %5, i64* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i8** %5, i8*** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32* %7, i32** %17, align 8
  store i64 0, i64* %18, align 8
  br label %25

25:                                               ; preds = %197, %8
  %26 = load i64, i64* %18, align 8
  %27 = load i64, i64* %11, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %198

29:                                               ; preds = %25
  %30 = load i32*, i32** %10, align 8
  %31 = load i64, i64* %18, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 32
  store i32 %34, i32* %23, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = load i64, i64* %18, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 192
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %24, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = load i64, i64* %18, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %18, align 8
  %45 = getelementptr inbounds i32, i32* %42, i64 %43
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 31
  store i32 %47, i32* %22, align 4
  %48 = load i32, i32* %22, align 4
  %49 = icmp eq i32 %48, 31
  br i1 %49, label %50, label %53

50:                                               ; preds = %29
  %51 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %9, align 4
  br label %200

53:                                               ; preds = %29
  store i64 0, i64* %19, align 8
  store i64 1, i64* %20, align 8
  %54 = load i32, i32* %24, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* %22, align 4
  %58 = icmp eq i32 %57, 5
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i64, i64* %18, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %18, align 8
  br label %120

62:                                               ; preds = %56, %53
  %63 = load i32*, i32** %10, align 8
  %64 = load i64, i64* %18, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 128
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %102

69:                                               ; preds = %62
  %70 = load i32*, i32** %10, align 8
  %71 = load i64, i64* %18, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %18, align 8
  %73 = getelementptr inbounds i32, i32* %70, i64 %71
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 127
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %20, align 8
  %77 = load i64, i64* %20, align 8
  %78 = icmp ugt i64 %77, 2
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %9, align 4
  br label %200

82:                                               ; preds = %69
  store i64 0, i64* %21, align 8
  br label %83

83:                                               ; preds = %98, %82
  %84 = load i64, i64* %21, align 8
  %85 = load i64, i64* %20, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = load i64, i64* %19, align 8
  %89 = shl i64 %88, 8
  store i64 %89, i64* %19, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = load i64, i64* %18, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %18, align 8
  %93 = getelementptr inbounds i32, i32* %90, i64 %91
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %19, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %19, align 8
  br label %98

98:                                               ; preds = %87
  %99 = load i64, i64* %21, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %21, align 8
  br label %83

101:                                              ; preds = %83
  br label %109

102:                                              ; preds = %62
  %103 = load i32*, i32** %10, align 8
  %104 = load i64, i64* %18, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %18, align 8
  %106 = getelementptr inbounds i32, i32* %103, i64 %104
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %19, align 8
  br label %109

109:                                              ; preds = %102, %101
  %110 = load i64, i64* %19, align 8
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* %18, align 8
  %113 = sub i64 %111, %112
  %114 = icmp ugt i64 %110, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i64, i64* %19, align 8
  %117 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i64 %116)
  %118 = load i32, i32* @FALSE, align 4
  store i32 %118, i32* %9, align 4
  br label %200

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119, %59
  %121 = load i64, i64* %19, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %197

123:                                              ; preds = %120
  %124 = load i32, i32* %23, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %148

126:                                              ; preds = %123
  %127 = load i32*, i32** %10, align 8
  %128 = load i64, i64* %18, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i64, i64* %19, align 8
  %131 = load i8*, i8** %12, align 8
  %132 = load i64, i64* %13, align 8
  %133 = load i32, i32* %14, align 4
  %134 = load i8**, i8*** %15, align 8
  %135 = load i64*, i64** %16, align 8
  %136 = load i32*, i32** %17, align 8
  %137 = call i32 @get_data_from_asn1_internal(i32* %129, i64 %130, i8* %131, i64 %132, i32 %133, i8** %134, i64* %135, i32* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %126
  %140 = load i32, i32* @FALSE, align 4
  store i32 %140, i32* %9, align 4
  br label %200

141:                                              ; preds = %126
  %142 = load i8**, i8*** %15, align 8
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i32, i32* @TRUE, align 4
  store i32 %146, i32* %9, align 4
  br label %200

147:                                              ; preds = %141
  br label %193

148:                                              ; preds = %123
  %149 = load i32, i32* %24, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %192

151:                                              ; preds = %148
  %152 = load i32*, i32** %17, align 8
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %173, label %155

155:                                              ; preds = %151
  %156 = load i32, i32* %22, align 4
  %157 = icmp eq i32 %156, 6
  br i1 %157, label %158, label %173

158:                                              ; preds = %155
  %159 = load i64, i64* %19, align 8
  %160 = load i64, i64* %13, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %173

162:                                              ; preds = %158
  %163 = load i32*, i32** %10, align 8
  %164 = load i64, i64* %18, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = load i8*, i8** %12, align 8
  %167 = load i64, i64* %13, align 8
  %168 = call i64 @memcmp(i32* %165, i8* %166, i64 %167)
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %162
  %171 = load i32, i32* @TRUE, align 4
  %172 = load i32*, i32** %17, align 8
  store i32 %171, i32* %172, align 4
  br label %191

173:                                              ; preds = %162, %158, %155, %151
  %174 = load i32*, i32** %17, align 8
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %173
  %178 = load i32, i32* %22, align 4
  %179 = load i32, i32* %14, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %190

181:                                              ; preds = %177
  %182 = load i64, i64* %19, align 8
  %183 = load i64*, i64** %16, align 8
  store i64 %182, i64* %183, align 8
  %184 = load i32*, i32** %10, align 8
  %185 = load i64, i64* %18, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = bitcast i32* %186 to i8*
  %188 = load i8**, i8*** %15, align 8
  store i8* %187, i8** %188, align 8
  %189 = load i32, i32* @TRUE, align 4
  store i32 %189, i32* %9, align 4
  br label %200

190:                                              ; preds = %177, %173
  br label %191

191:                                              ; preds = %190, %170
  br label %192

192:                                              ; preds = %191, %148
  br label %193

193:                                              ; preds = %192, %147
  %194 = load i64, i64* %19, align 8
  %195 = load i64, i64* %18, align 8
  %196 = add i64 %195, %194
  store i64 %196, i64* %18, align 8
  br label %197

197:                                              ; preds = %193, %120
  br label %25

198:                                              ; preds = %25
  %199 = load i32, i32* @TRUE, align 4
  store i32 %199, i32* %9, align 4
  br label %200

200:                                              ; preds = %198, %181, %145, %139, %115, %79, %50
  %201 = load i32, i32* %9, align 4
  ret i32 %201
}

declare dso_local i32 @uprintf(i8*, ...) #1

declare dso_local i64 @memcmp(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
