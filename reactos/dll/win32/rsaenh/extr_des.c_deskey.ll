; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_des.c_deskey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_des.c_deskey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pc1 = common dso_local global i64* null, align 8
@bytebit = common dso_local global i8* null, align 8
@DE1 = common dso_local global i16 0, align 2
@totrot = common dso_local global i64* null, align 8
@pc2 = common dso_local global i64* null, align 8
@bigbyte = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i16, i32*)* @deskey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deskey(i8* %0, i16 signext %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [32 x i32], align 16
  %13 = alloca [56 x i8], align 16
  %14 = alloca [56 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %54, %3
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 56
  br i1 %17, label %18, label %57

18:                                               ; preds = %15
  %19 = load i64*, i64** @pc1, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, 7
  store i32 %26, i32* %10, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %9, align 4
  %29 = ashr i32 %28, 3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8*, i8** @bytebit, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %33, %39
  %41 = load i8*, i8** @bytebit, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %40, %46
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  %50 = trunc i32 %49 to i8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [56 x i8], [56 x i8]* %13, i64 0, i64 %52
  store i8 %50, i8* %53, align 1
  br label %54

54:                                               ; preds = %18
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %15

57:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %210, %57
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 16
  br i1 %60, label %61, label %213

61:                                               ; preds = %58
  %62 = load i16, i16* %5, align 2
  %63 = sext i16 %62 to i32
  %64 = load i16, i16* @DE1, align 2
  %65 = sext i16 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 15, %68
  %70 = shl i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %74

71:                                               ; preds = %61
  %72 = load i32, i32* %7, align 4
  %73 = shl i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %71, %67
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %78
  store i32 0, i32* %79, align 4
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %81
  store i32 0, i32* %82, align 4
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %115, %74
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 28
  br i1 %85, label %86, label %118

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = load i64*, i64** @totrot, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = add nsw i32 %87, %93
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %95, 28
  br i1 %96, label %97, label %105

97:                                               ; preds = %86
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [56 x i8], [56 x i8]* %13, i64 0, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [56 x i8], [56 x i8]* %14, i64 0, i64 %103
  store i8 %101, i8* %104, align 1
  br label %114

105:                                              ; preds = %86
  %106 = load i32, i32* %9, align 4
  %107 = sub nsw i32 %106, 28
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [56 x i8], [56 x i8]* %13, i64 0, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [56 x i8], [56 x i8]* %14, i64 0, i64 %112
  store i8 %110, i8* %113, align 1
  br label %114

114:                                              ; preds = %105, %97
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %83

118:                                              ; preds = %83
  br label %119

119:                                              ; preds = %151, %118
  %120 = load i32, i32* %8, align 4
  %121 = icmp slt i32 %120, 56
  br i1 %121, label %122, label %154

122:                                              ; preds = %119
  %123 = load i32, i32* %8, align 4
  %124 = load i64*, i64** @totrot, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = add nsw i32 %123, %129
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp slt i32 %131, 56
  br i1 %132, label %133, label %141

133:                                              ; preds = %122
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [56 x i8], [56 x i8]* %13, i64 0, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [56 x i8], [56 x i8]* %14, i64 0, i64 %139
  store i8 %137, i8* %140, align 1
  br label %150

141:                                              ; preds = %122
  %142 = load i32, i32* %9, align 4
  %143 = sub nsw i32 %142, 28
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [56 x i8], [56 x i8]* %13, i64 0, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [56 x i8], [56 x i8]* %14, i64 0, i64 %148
  store i8 %146, i8* %149, align 1
  br label %150

150:                                              ; preds = %141, %133
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %119

154:                                              ; preds = %119
  store i32 0, i32* %8, align 4
  br label %155

155:                                              ; preds = %206, %154
  %156 = load i32, i32* %8, align 4
  %157 = icmp slt i32 %156, 24
  br i1 %157, label %158, label %209

158:                                              ; preds = %155
  %159 = load i64*, i64** @pc2, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [56 x i8], [56 x i8]* %14, i64 0, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %158
  %171 = load i32*, i32** @bigbyte, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %175
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %170, %158
  %182 = load i64*, i64** @pc2, align 8
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 24
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %182, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = trunc i64 %187 to i32
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [56 x i8], [56 x i8]* %14, i64 0, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %205

194:                                              ; preds = %181
  %195 = load i32*, i32** @bigbyte, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %199
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %194, %181
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %8, align 4
  br label %155

209:                                              ; preds = %155
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %7, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %7, align 4
  br label %58

213:                                              ; preds = %58
  %214 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 0
  %215 = load i32*, i32** %6, align 8
  %216 = call i32 @cookey(i32* %214, i32* %215)
  ret void
}

declare dso_local i32 @cookey(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
