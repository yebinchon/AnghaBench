; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_transmit.c_adns__mkquery.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_transmit.c_adns__mkquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@adns_qf_quoteok_query = common dso_local global i32 0, align 4
@adns_s_querydomaininvalid = common dso_local global i64 0, align 8
@DNS_MAXLABEL = common dso_local global i32 0, align 4
@adns_s_querydomaintoolong = common dso_local global i64 0, align 8
@DNS_MAXDOMAIN = common dso_local global i32 0, align 4
@adns_s_ok = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @adns__mkquery(i32 %0, i32* %1, i32* %2, i8* %3, i32 %4, %struct.TYPE_3__* %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [255 x i32], align 16
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %14, align 8
  store i32 %6, i32* %15, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %13, align 4
  %28 = add nsw i32 %27, 2
  %29 = call i64 @mkquery_header(i32 %24, i32* %25, i32* %26, i32 %28)
  store i64 %29, i64* %23, align 8
  %30 = load i64, i64* %23, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %7
  %33 = load i64, i64* %23, align 8
  store i64 %33, i64* %8, align 8
  br label %209

34:                                               ; preds = %7
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @MKQUERY_START(i32* %35)
  %37 = load i8*, i8** %12, align 8
  store i8* %37, i8** %21, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8* %41, i8** %22, align 8
  store i32 0, i32* %18, align 4
  br label %42

42:                                               ; preds = %187, %34
  %43 = load i8*, i8** %21, align 8
  %44 = load i8*, i8** %22, align 8
  %45 = icmp ne i8* %43, %44
  br i1 %45, label %46, label %199

46:                                               ; preds = %42
  store i32 0, i32* %16, align 4
  br label %47

47:                                               ; preds = %160, %46
  %48 = load i8*, i8** %21, align 8
  %49 = load i8*, i8** %22, align 8
  %50 = icmp ne i8* %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i8*, i8** %21, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %21, align 8
  %54 = load i8, i8* %52, align 1
  %55 = sext i8 %54 to i32
  store i32 %55, i32* %17, align 4
  %56 = icmp ne i32 %55, 46
  br label %57

57:                                               ; preds = %51, %47
  %58 = phi i1 [ false, %47 ], [ %56, %51 ]
  br i1 %58, label %59, label %166

59:                                               ; preds = %57
  %60 = load i32, i32* %17, align 4
  %61 = icmp eq i32 %60, 92
  br i1 %61, label %62, label %127

62:                                               ; preds = %59
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* @adns_qf_quoteok_query, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = load i64, i64* @adns_s_querydomaininvalid, align 8
  store i64 %68, i64* %8, align 8
  br label %209

69:                                               ; preds = %62
  %70 = load i8*, i8** %21, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = call i64 @ctype_digit(i8 signext %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %117

75:                                               ; preds = %69
  %76 = load i8*, i8** %21, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = call i64 @ctype_digit(i8 signext %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %114

81:                                               ; preds = %75
  %82 = load i8*, i8** %21, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = load i8, i8* %83, align 1
  %85 = call i64 @ctype_digit(i8 signext %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %114

87:                                               ; preds = %81
  %88 = load i8*, i8** %21, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = sub nsw i32 %91, 48
  %93 = mul nsw i32 %92, 100
  %94 = load i8*, i8** %21, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = sub nsw i32 %97, 48
  %99 = mul nsw i32 %98, 10
  %100 = add nsw i32 %93, %99
  %101 = load i8*, i8** %21, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 2
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = sub nsw i32 %104, 48
  %106 = add nsw i32 %100, %105
  store i32 %106, i32* %17, align 4
  %107 = load i8*, i8** %21, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 3
  store i8* %108, i8** %21, align 8
  %109 = load i32, i32* %17, align 4
  %110 = icmp sge i32 %109, 256
  br i1 %110, label %111, label %113

111:                                              ; preds = %87
  %112 = load i64, i64* @adns_s_querydomaininvalid, align 8
  store i64 %112, i64* %8, align 8
  br label %209

113:                                              ; preds = %87
  br label %116

114:                                              ; preds = %81, %75
  %115 = load i64, i64* @adns_s_querydomaininvalid, align 8
  store i64 %115, i64* %8, align 8
  br label %209

116:                                              ; preds = %113
  br label %126

117:                                              ; preds = %69
  %118 = load i8*, i8** %21, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %21, align 8
  %120 = load i8, i8* %118, align 1
  %121 = sext i8 %120 to i32
  store i32 %121, i32* %17, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %117
  %124 = load i64, i64* @adns_s_querydomaininvalid, align 8
  store i64 %124, i64* %8, align 8
  br label %209

125:                                              ; preds = %117
  br label %126

126:                                              ; preds = %125, %116
  br label %127

127:                                              ; preds = %126, %59
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* @adns_qf_quoteok_query, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %154, label %132

132:                                              ; preds = %127
  %133 = load i32, i32* %17, align 4
  %134 = icmp eq i32 %133, 45
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i32, i32* %16, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = load i64, i64* @adns_s_querydomaininvalid, align 8
  store i64 %139, i64* %8, align 8
  br label %209

140:                                              ; preds = %135
  br label %153

141:                                              ; preds = %132
  %142 = load i32, i32* %17, align 4
  %143 = call i32 @ctype_alpha(i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* %17, align 4
  %147 = trunc i32 %146 to i8
  %148 = call i64 @ctype_digit(i8 signext %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %145
  %151 = load i64, i64* @adns_s_querydomaininvalid, align 8
  store i64 %151, i64* %8, align 8
  br label %209

152:                                              ; preds = %145, %141
  br label %153

153:                                              ; preds = %152, %140
  br label %154

154:                                              ; preds = %153, %127
  %155 = load i32, i32* %16, align 4
  %156 = sext i32 %155 to i64
  %157 = icmp eq i64 %156, 1020
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i64, i64* @adns_s_querydomaininvalid, align 8
  store i64 %159, i64* %8, align 8
  br label %209

160:                                              ; preds = %154
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %16, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %16, align 4
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds [255 x i32], [255 x i32]* %19, i64 0, i64 %164
  store i32 %161, i32* %165, align 4
  br label %47

166:                                              ; preds = %57
  %167 = load i32, i32* %16, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %166
  %170 = load i64, i64* @adns_s_querydomaininvalid, align 8
  store i64 %170, i64* %8, align 8
  br label %209

171:                                              ; preds = %166
  %172 = load i32, i32* %16, align 4
  %173 = load i32, i32* @DNS_MAXLABEL, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = load i64, i64* @adns_s_querydomaintoolong, align 8
  store i64 %176, i64* %8, align 8
  br label %209

177:                                              ; preds = %171
  %178 = load i32, i32* %16, align 4
  %179 = add nsw i32 %178, 1
  %180 = load i32, i32* %18, align 4
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* %18, align 4
  %182 = load i32, i32* %18, align 4
  %183 = load i32, i32* @DNS_MAXDOMAIN, align 4
  %184 = icmp sge i32 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %177
  %186 = load i64, i64* @adns_s_querydomaintoolong, align 8
  store i64 %186, i64* %8, align 8
  br label %209

187:                                              ; preds = %177
  %188 = load i32, i32* %16, align 4
  %189 = call i32 @MKQUERY_ADDB(i32 %188)
  %190 = load i32*, i32** %20, align 8
  %191 = getelementptr inbounds [255 x i32], [255 x i32]* %19, i64 0, i64 0
  %192 = load i32, i32* %16, align 4
  %193 = sext i32 %192 to i64
  %194 = call i32 @memcpy(i32* %190, i32* %191, i64 %193)
  %195 = load i32, i32* %16, align 4
  %196 = load i32*, i32** %20, align 8
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  store i32* %198, i32** %20, align 8
  br label %42

199:                                              ; preds = %42
  %200 = call i32 @MKQUERY_ADDB(i32 0)
  %201 = load i32*, i32** %10, align 8
  %202 = call i32 @MKQUERY_STOP(i32* %201)
  %203 = load i32*, i32** %10, align 8
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i64 @mkquery_footer(i32* %203, i32 %206)
  store i64 %207, i64* %23, align 8
  %208 = load i64, i64* @adns_s_ok, align 8
  store i64 %208, i64* %8, align 8
  br label %209

209:                                              ; preds = %199, %185, %175, %169, %158, %150, %138, %123, %114, %111, %67, %32
  %210 = load i64, i64* %8, align 8
  ret i64 %210
}

declare dso_local i64 @mkquery_header(i32, i32*, i32*, i32) #1

declare dso_local i32 @MKQUERY_START(i32*) #1

declare dso_local i64 @ctype_digit(i8 signext) #1

declare dso_local i32 @ctype_alpha(i32) #1

declare dso_local i32 @MKQUERY_ADDB(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @MKQUERY_STOP(i32*) #1

declare dso_local i64 @mkquery_footer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
