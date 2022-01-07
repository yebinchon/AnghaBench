; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_tokenize.c_fts5PorterCb.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_tokenize.c_fts5PorterCb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 (i32, i32, i8*, i32, i32, i32)*, i32 }

@FTS5_PORTER_MAX_TOKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i32, i32)* @fts5PorterCb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5PorterCb(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_2__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %14, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @FTS5_PORTER_MAX_TOKEN, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 3
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %6
  br label %205

27:                                               ; preds = %23
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %15, align 8
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %16, align 4
  %32 = load i8*, i8** %15, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* %16, align 4
  %35 = call i32 @memcpy(i8* %32, i8* %33, i32 %34)
  %36 = load i8*, i8** %15, align 8
  %37 = call i32 @fts5PorterStep1A(i8* %36, i32* %16)
  %38 = load i8*, i8** %15, align 8
  %39 = call i64 @fts5PorterStep1B(i8* %38, i32* %16)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %100

41:                                               ; preds = %27
  %42 = load i8*, i8** %15, align 8
  %43 = call i64 @fts5PorterStep1B2(i8* %42, i32* %16)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %99

45:                                               ; preds = %41
  %46 = load i8*, i8** %15, align 8
  %47 = load i32, i32* %16, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %17, align 1
  %52 = load i8, i8* %17, align 1
  %53 = call i64 @fts5PorterIsVowel(i8 signext %52, i32 0)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %81

55:                                               ; preds = %45
  %56 = load i8, i8* %17, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 108
  br i1 %58, label %59, label %81

59:                                               ; preds = %55
  %60 = load i8, i8* %17, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 115
  br i1 %62, label %63, label %81

63:                                               ; preds = %59
  %64 = load i8, i8* %17, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 122
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load i8, i8* %17, align 1
  %69 = sext i8 %68 to i32
  %70 = load i8*, i8** %15, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sub nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %69, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %16, align 4
  br label %98

81:                                               ; preds = %67, %63, %59, %55, %45
  %82 = load i8*, i8** %15, align 8
  %83 = load i32, i32* %16, align 4
  %84 = call i64 @fts5Porter_MEq1(i8* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load i8*, i8** %15, align 8
  %88 = load i32, i32* %16, align 4
  %89 = call i64 @fts5Porter_Ostar(i8* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load i8*, i8** %15, align 8
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %16, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  store i8 101, i8* %96, align 1
  br label %97

97:                                               ; preds = %91, %86, %81
  br label %98

98:                                               ; preds = %97, %78
  br label %99

99:                                               ; preds = %98, %41
  br label %100

100:                                              ; preds = %99, %27
  %101 = load i8*, i8** %15, align 8
  %102 = load i32, i32* %16, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 121
  br i1 %108, label %109, label %121

109:                                              ; preds = %100
  %110 = load i8*, i8** %15, align 8
  %111 = load i32, i32* %16, align 4
  %112 = sub nsw i32 %111, 1
  %113 = call i64 @fts5Porter_Vowel(i8* %110, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load i8*, i8** %15, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  store i8 105, i8* %120, align 1
  br label %121

121:                                              ; preds = %115, %109, %100
  %122 = load i8*, i8** %15, align 8
  %123 = call i32 @fts5PorterStep2(i8* %122, i32* %16)
  %124 = load i8*, i8** %15, align 8
  %125 = call i32 @fts5PorterStep3(i8* %124, i32* %16)
  %126 = load i8*, i8** %15, align 8
  %127 = call i32 @fts5PorterStep4(i8* %126, i32* %16)
  %128 = load i32, i32* %16, align 4
  %129 = icmp sgt i32 %128, 0
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load i8*, i8** %15, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 101
  br i1 %139, label %140, label %162

140:                                              ; preds = %121
  %141 = load i8*, i8** %15, align 8
  %142 = load i32, i32* %16, align 4
  %143 = sub nsw i32 %142, 1
  %144 = call i64 @fts5Porter_MGt1(i8* %141, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %158, label %146

146:                                              ; preds = %140
  %147 = load i8*, i8** %15, align 8
  %148 = load i32, i32* %16, align 4
  %149 = sub nsw i32 %148, 1
  %150 = call i64 @fts5Porter_MEq1(i8* %147, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %146
  %153 = load i8*, i8** %15, align 8
  %154 = load i32, i32* %16, align 4
  %155 = sub nsw i32 %154, 1
  %156 = call i64 @fts5Porter_Ostar(i8* %153, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %152, %140
  %159 = load i32, i32* %16, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %16, align 4
  br label %161

161:                                              ; preds = %158, %152, %146
  br label %162

162:                                              ; preds = %161, %121
  %163 = load i32, i32* %16, align 4
  %164 = icmp sgt i32 %163, 1
  br i1 %164, label %165, label %192

165:                                              ; preds = %162
  %166 = load i8*, i8** %15, align 8
  %167 = load i32, i32* %16, align 4
  %168 = sub nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %166, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 108
  br i1 %173, label %174, label %192

174:                                              ; preds = %165
  %175 = load i8*, i8** %15, align 8
  %176 = load i32, i32* %16, align 4
  %177 = sub nsw i32 %176, 2
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %175, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 108
  br i1 %182, label %183, label %192

183:                                              ; preds = %174
  %184 = load i8*, i8** %15, align 8
  %185 = load i32, i32* %16, align 4
  %186 = sub nsw i32 %185, 1
  %187 = call i64 @fts5Porter_MGt1(i8* %184, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %183
  %190 = load i32, i32* %16, align 4
  %191 = add nsw i32 %190, -1
  store i32 %191, i32* %16, align 4
  br label %192

192:                                              ; preds = %189, %183, %174, %165, %162
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 1
  %195 = load i32 (i32, i32, i8*, i32, i32, i32)*, i32 (i32, i32, i8*, i32, i32, i32)** %194, align 8
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %9, align 4
  %200 = load i8*, i8** %15, align 8
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* %13, align 4
  %204 = call i32 %195(i32 %198, i32 %199, i8* %200, i32 %201, i32 %202, i32 %203)
  store i32 %204, i32* %7, align 4
  br label %218

205:                                              ; preds = %26
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 1
  %208 = load i32 (i32, i32, i8*, i32, i32, i32)*, i32 (i32, i32, i8*, i32, i32, i32)** %207, align 8
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %9, align 4
  %213 = load i8*, i8** %10, align 8
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* %13, align 4
  %217 = call i32 %208(i32 %211, i32 %212, i8* %213, i32 %214, i32 %215, i32 %216)
  store i32 %217, i32* %7, align 4
  br label %218

218:                                              ; preds = %205, %192
  %219 = load i32, i32* %7, align 4
  ret i32 %219
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fts5PorterStep1A(i8*, i32*) #1

declare dso_local i64 @fts5PorterStep1B(i8*, i32*) #1

declare dso_local i64 @fts5PorterStep1B2(i8*, i32*) #1

declare dso_local i64 @fts5PorterIsVowel(i8 signext, i32) #1

declare dso_local i64 @fts5Porter_MEq1(i8*, i32) #1

declare dso_local i64 @fts5Porter_Ostar(i8*, i32) #1

declare dso_local i64 @fts5Porter_Vowel(i8*, i32) #1

declare dso_local i32 @fts5PorterStep2(i8*, i32*) #1

declare dso_local i32 @fts5PorterStep3(i8*, i32*) #1

declare dso_local i32 @fts5PorterStep4(i8*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fts5Porter_MGt1(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
