; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_phoneticHash.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_phoneticHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initClass = common dso_local global i8* null, align 8
@CCLASS_SPACE = common dso_local global i8 0, align 1
@CCLASS_OTHER = common dso_local global i8 0, align 1
@CCLASS_DIGIT = common dso_local global i8 0, align 1
@midClass = common dso_local global i8* null, align 8
@CCLASS_VOWEL = common dso_local global i8 0, align 1
@CCLASS_R = common dso_local global i8 0, align 1
@CCLASS_L = common dso_local global i8 0, align 1
@CCLASS_SILENT = common dso_local global i8 0, align 1
@className = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @phoneticHash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @phoneticHash(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, 1
  %15 = call i8* @sqlite3_malloc64(i32 %14)
  store i8* %15, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store i8 119, i8* %9, align 1
  store i8 119, i8* %10, align 1
  %16 = load i8*, i8** @initClass, align 8
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %240

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 2
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  switch i32 %27, label %40 [
    i32 103, label %28
    i32 107, label %28
  ]

28:                                               ; preds = %23, %23
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 110
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %34, %28
  br label %40

40:                                               ; preds = %23, %39
  br label %41

41:                                               ; preds = %40, %20
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %231, %41
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %234

46:                                               ; preds = %42
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %12, align 1
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %123

56:                                               ; preds = %46
  %57 = load i8, i8* %12, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 119
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i8*, i8** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 114
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %231

70:                                               ; preds = %60, %56
  %71 = load i8, i8* %12, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 100
  br i1 %73, label %74, label %93

74:                                               ; preds = %70
  %75 = load i8*, i8** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %81, 106
  br i1 %82, label %92, label %83

83:                                               ; preds = %74
  %84 = load i8*, i8** %4, align 8
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %90, 103
  br i1 %91, label %92, label %93

92:                                               ; preds = %83, %74
  br label %231

93:                                               ; preds = %83, %70
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 2
  %96 = load i32, i32* %5, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %122

98:                                               ; preds = %93
  %99 = load i8, i8* %12, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 116
  br i1 %101, label %102, label %121

102:                                              ; preds = %98
  %103 = load i8*, i8** %4, align 8
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %109, 99
  br i1 %110, label %111, label %121

111:                                              ; preds = %102
  %112 = load i8*, i8** %4, align 8
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 2
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp eq i32 %118, 104
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  br label %231

121:                                              ; preds = %111, %102, %98
  br label %122

122:                                              ; preds = %121, %93
  br label %123

123:                                              ; preds = %122, %46
  %124 = load i8*, i8** %11, align 8
  %125 = load i8, i8* %12, align 1
  %126 = zext i8 %125 to i32
  %127 = and i32 %126, 127
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %124, i64 %128
  %130 = load i8, i8* %129, align 1
  store i8 %130, i8* %12, align 1
  %131 = load i8, i8* %12, align 1
  %132 = zext i8 %131 to i32
  %133 = load i8, i8* @CCLASS_SPACE, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %132, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %123
  br label %231

137:                                              ; preds = %123
  %138 = load i8, i8* %12, align 1
  %139 = zext i8 %138 to i32
  %140 = load i8, i8* @CCLASS_OTHER, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp eq i32 %139, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %137
  %144 = load i8, i8* %9, align 1
  %145 = sext i8 %144 to i32
  %146 = load i8, i8* @CCLASS_DIGIT, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp ne i32 %145, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %231

150:                                              ; preds = %143, %137
  %151 = load i8*, i8** @midClass, align 8
  store i8* %151, i8** %11, align 8
  %152 = load i8, i8* %12, align 1
  %153 = zext i8 %152 to i32
  %154 = load i8, i8* @CCLASS_VOWEL, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp eq i32 %153, %155
  br i1 %156, label %157, label %170

157:                                              ; preds = %150
  %158 = load i8, i8* %10, align 1
  %159 = sext i8 %158 to i32
  %160 = load i8, i8* @CCLASS_R, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %159, %161
  br i1 %162, label %169, label %163

163:                                              ; preds = %157
  %164 = load i8, i8* %10, align 1
  %165 = sext i8 %164 to i32
  %166 = load i8, i8* @CCLASS_L, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %165, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %163, %157
  br label %231

170:                                              ; preds = %163, %150
  %171 = load i8, i8* %12, align 1
  %172 = zext i8 %171 to i32
  %173 = load i8, i8* @CCLASS_R, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %172, %174
  br i1 %175, label %182, label %176

176:                                              ; preds = %170
  %177 = load i8, i8* %12, align 1
  %178 = zext i8 %177 to i32
  %179 = load i8, i8* @CCLASS_L, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %178, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %176, %170
  %183 = load i8, i8* %10, align 1
  %184 = sext i8 %183 to i32
  %185 = load i8, i8* @CCLASS_VOWEL, align 1
  %186 = zext i8 %185 to i32
  %187 = icmp eq i32 %184, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %182
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %8, align 4
  br label %191

191:                                              ; preds = %188, %182, %176
  %192 = load i8, i8* %12, align 1
  store i8 %192, i8* %9, align 1
  %193 = load i8, i8* %12, align 1
  %194 = zext i8 %193 to i32
  %195 = load i8, i8* @CCLASS_SILENT, align 1
  %196 = zext i8 %195 to i32
  %197 = icmp eq i32 %194, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %191
  br label %231

199:                                              ; preds = %191
  %200 = load i8, i8* %12, align 1
  store i8 %200, i8* %10, align 1
  %201 = load i8*, i8** @className, align 8
  %202 = load i8, i8* %12, align 1
  %203 = zext i8 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i8, i8* %204, align 1
  store i8 %205, i8* %12, align 1
  %206 = load i32, i32* %8, align 4
  %207 = icmp sge i32 %206, 0
  %208 = zext i1 %207 to i32
  %209 = call i32 @assert(i32 %208)
  %210 = load i32, i32* %8, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %223, label %212

212:                                              ; preds = %199
  %213 = load i8, i8* %12, align 1
  %214 = zext i8 %213 to i32
  %215 = load i8*, i8** %6, align 8
  %216 = load i32, i32* %8, align 4
  %217 = sub nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %215, i64 %218
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  %222 = icmp ne i32 %214, %221
  br i1 %222, label %223, label %230

223:                                              ; preds = %212, %199
  %224 = load i8, i8* %12, align 1
  %225 = load i8*, i8** %6, align 8
  %226 = load i32, i32* %8, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %8, align 4
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i8, i8* %225, i64 %228
  store i8 %224, i8* %229, align 1
  br label %230

230:                                              ; preds = %223, %212
  br label %231

231:                                              ; preds = %230, %198, %169, %149, %136, %120, %92, %69
  %232 = load i32, i32* %7, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %7, align 4
  br label %42

234:                                              ; preds = %42
  %235 = load i8*, i8** %6, align 8
  %236 = load i32, i32* %8, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8, i8* %235, i64 %237
  store i8 0, i8* %238, align 1
  %239 = load i8*, i8** %6, align 8
  store i8* %239, i8** %3, align 8
  br label %240

240:                                              ; preds = %234, %19
  %241 = load i8*, i8** %3, align 8
  ret i8* %241
}

declare dso_local i8* @sqlite3_malloc64(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
