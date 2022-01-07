; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_nsc.c_load_byte.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_nsc.c_load_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inverse = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8*, i8**, i8*, i8*)* @load_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_byte(i8 zeroext %0, i8* %1, i8** %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  store i8 %0, i8* %7, align 1
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i8*, i8** %8, align 8
  store i8 0, i8* %13, align 1
  %14 = load i8, i8* %7, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %89

17:                                               ; preds = %5
  %18 = load i8**, i8*** %9, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @isxdigit(i8 zeroext %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 -1, i32* %6, align 4
  br label %233

24:                                               ; preds = %17
  %25 = load i8**, i8*** %9, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @isdigit(i8 zeroext %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load i8**, i8*** %9, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i32 @toupper(i8 zeroext %33)
  %35 = sub nsw i32 %34, 7
  %36 = mul nsw i32 %35, 16
  %37 = trunc i32 %36 to i8
  %38 = load i8*, i8** %8, align 8
  store i8 %37, i8* %38, align 1
  br label %47

39:                                               ; preds = %24
  %40 = load i8**, i8*** %9, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = mul nsw i32 %43, 16
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %8, align 8
  store i8 %45, i8* %46, align 1
  br label %47

47:                                               ; preds = %39, %30
  %48 = load i8**, i8*** %9, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %48, align 8
  %51 = load i8**, i8*** %9, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = load i8, i8* %52, align 1
  %54 = call i64 @isxdigit(i8 zeroext %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 -1, i32* %6, align 4
  br label %233

57:                                               ; preds = %47
  %58 = load i8**, i8*** %9, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = load i8, i8* %59, align 1
  %61 = call i64 @isdigit(i8 zeroext %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load i8**, i8*** %9, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @toupper(i8 zeroext %66)
  %68 = sub nsw i32 %67, 55
  %69 = load i8*, i8** %8, align 8
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = or i32 %71, %68
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %69, align 1
  br label %85

74:                                               ; preds = %57
  %75 = load i8**, i8*** %9, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = sub nsw i32 %78, 48
  %80 = load i8*, i8** %8, align 8
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = or i32 %82, %79
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %80, align 1
  br label %85

85:                                               ; preds = %74, %63
  %86 = load i8**, i8*** %9, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %86, align 8
  br label %232

89:                                               ; preds = %5
  %90 = load i8, i8* %7, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %231

93:                                               ; preds = %89
  %94 = load i8**, i8*** %9, align 8
  store i8** %94, i8*** %12, align 8
  %95 = load i8**, i8*** %12, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp sgt i32 %98, 127
  br i1 %99, label %109, label %100

100:                                              ; preds = %93
  %101 = load i32*, i32** @inverse, align 8
  %102 = load i8**, i8*** %12, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i64
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 255
  br i1 %108, label %109, label %110

109:                                              ; preds = %100, %93
  store i32 -1, i32* %6, align 4
  br label %233

110:                                              ; preds = %100
  %111 = load i8*, i8** %11, align 8
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %170

115:                                              ; preds = %110
  %116 = load i8**, i8*** %12, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp sgt i32 %120, 127
  br i1 %121, label %132, label %122

122:                                              ; preds = %115
  %123 = load i32*, i32** @inverse, align 8
  %124 = load i8**, i8*** %12, align 8
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds i32, i32* %123, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 255
  br i1 %131, label %132, label %133

132:                                              ; preds = %122, %115
  store i32 -1, i32* %6, align 4
  br label %233

133:                                              ; preds = %122
  %134 = load i32*, i32** @inverse, align 8
  %135 = load i8**, i8*** %12, align 8
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i64
  %140 = getelementptr inbounds i32, i32* %134, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 %141, 4
  %143 = load i32*, i32** @inverse, align 8
  %144 = load i8**, i8*** %12, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i64
  %149 = getelementptr inbounds i32, i32* %143, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = sdiv i32 %150, 16
  %152 = or i32 %142, %151
  %153 = trunc i32 %152 to i8
  %154 = load i8*, i8** %8, align 8
  store i8 %153, i8* %154, align 1
  %155 = load i32*, i32** @inverse, align 8
  %156 = load i8**, i8*** %12, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i64
  %161 = getelementptr inbounds i32, i32* %155, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 %162, 16
  %164 = trunc i32 %163 to i8
  %165 = load i8*, i8** %10, align 8
  store i8 %164, i8* %165, align 1
  %166 = load i8*, i8** %11, align 8
  store i8 4, i8* %166, align 1
  %167 = load i8**, i8*** %12, align 8
  %168 = load i8*, i8** %167, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 2
  store i8* %169, i8** %167, align 8
  br label %230

170:                                              ; preds = %110
  %171 = load i8*, i8** %11, align 8
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = icmp eq i32 %173, 2
  br i1 %174, label %175, label %194

175:                                              ; preds = %170
  %176 = load i8*, i8** %10, align 8
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = load i32*, i32** @inverse, align 8
  %180 = load i8**, i8*** %12, align 8
  %181 = load i8*, i8** %180, align 8
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i64
  %184 = getelementptr inbounds i32, i32* %179, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %178, %185
  %187 = trunc i32 %186 to i8
  %188 = load i8*, i8** %8, align 8
  store i8 %187, i8* %188, align 1
  %189 = load i8*, i8** %10, align 8
  store i8 0, i8* %189, align 1
  %190 = load i8*, i8** %11, align 8
  store i8 0, i8* %190, align 1
  %191 = load i8**, i8*** %12, align 8
  %192 = load i8*, i8** %191, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %191, align 8
  br label %229

194:                                              ; preds = %170
  %195 = load i8*, i8** %11, align 8
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = icmp eq i32 %197, 4
  br i1 %198, label %199, label %228

199:                                              ; preds = %194
  %200 = load i32*, i32** @inverse, align 8
  %201 = load i8**, i8*** %12, align 8
  %202 = load i8*, i8** %201, align 8
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i64
  %205 = getelementptr inbounds i32, i32* %200, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = sdiv i32 %206, 4
  %208 = load i8*, i8** %10, align 8
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = or i32 %207, %210
  %212 = trunc i32 %211 to i8
  %213 = load i8*, i8** %8, align 8
  store i8 %212, i8* %213, align 1
  %214 = load i32*, i32** @inverse, align 8
  %215 = load i8**, i8*** %12, align 8
  %216 = load i8*, i8** %215, align 8
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i64
  %219 = getelementptr inbounds i32, i32* %214, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = mul nsw i32 %220, 64
  %222 = trunc i32 %221 to i8
  %223 = load i8*, i8** %10, align 8
  store i8 %222, i8* %223, align 1
  %224 = load i8*, i8** %11, align 8
  store i8 2, i8* %224, align 1
  %225 = load i8**, i8*** %12, align 8
  %226 = load i8*, i8** %225, align 8
  %227 = getelementptr inbounds i8, i8* %226, i32 1
  store i8* %227, i8** %225, align 8
  br label %228

228:                                              ; preds = %199, %194
  br label %229

229:                                              ; preds = %228, %175
  br label %230

230:                                              ; preds = %229, %133
  br label %231

231:                                              ; preds = %230, %89
  br label %232

232:                                              ; preds = %231, %85
  store i32 0, i32* %6, align 4
  br label %233

233:                                              ; preds = %232, %132, %109, %56, %23
  %234 = load i32, i32* %6, align 4
  ret i32 %234
}

declare dso_local i64 @isxdigit(i8 zeroext) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @toupper(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
