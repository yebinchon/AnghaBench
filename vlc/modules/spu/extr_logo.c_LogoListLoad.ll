; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/extr_logo.c_LogoListLoad.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/extr_logo.c_LogoListLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"logo file name %s, delay %d, alpha %d\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"error while loading logo %s, will be skipped\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i8*)* @LogoListLoad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LogoListLoad(i32* %0, %struct.TYPE_6__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i8* @strdup(i8* %18)
  store i8* %19, i8** %7, align 8
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %215

23:                                               ; preds = %3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %45, %23
  %27 = load i32, i32* %10, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %26
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 59
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %39, %31
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %10, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %26

48:                                               ; preds = %26
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.TYPE_5__* @calloc(i32 %51, i32 12)
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %9, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %54, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %56 = icmp ne %struct.TYPE_5__* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %48
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @free(i8* %58)
  br label %215

60:                                               ; preds = %48
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %203, %60
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ult i32 %62, %65
  br i1 %66, label %67, label %206

67:                                               ; preds = %61
  %68 = load i8*, i8** %7, align 8
  %69 = call i8* @strchr(i8* %68, i8 signext 59)
  store i8* %69, i8** %12, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i8* @strchr(i8* %70, i8 signext 44)
  store i8* %71, i8** %13, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %73 = load i32, i32* %11, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 -1, i32* %76, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %78 = load i32, i32* %11, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i32 -1, i32* %81, align 4
  %82 = load i8*, i8** %13, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %155

84:                                               ; preds = %67
  %85 = load i8*, i8** %13, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = icmp ult i8* %85, %86
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = load i8*, i8** %12, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %155, label %91

91:                                               ; preds = %88, %84
  %92 = load i8*, i8** %13, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 44
  br i1 %96, label %97, label %119

97:                                               ; preds = %91
  %98 = load i8*, i8** %13, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 59
  br i1 %102, label %103, label %119

103:                                              ; preds = %97
  %104 = load i8*, i8** %13, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %103
  %110 = load i8*, i8** %13, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = call i8* @atoi(i8* %111)
  %113 = ptrtoint i8* %112 to i32
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %115 = load i32, i32* %11, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  store i32 %113, i32* %118, align 4
  br label %119

119:                                              ; preds = %109, %103, %97, %91
  %120 = load i8*, i8** %13, align 8
  store i8 0, i8* %120, align 1
  %121 = load i8*, i8** %13, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = call i8* @strchr(i8* %122, i8 signext 44)
  store i8* %123, i8** %13, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %154

125:                                              ; preds = %119
  %126 = load i8*, i8** %13, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = icmp ult i8* %126, %127
  br i1 %128, label %132, label %129

129:                                              ; preds = %125
  %130 = load i8*, i8** %12, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %154, label %132

132:                                              ; preds = %129, %125
  %133 = load i8*, i8** %13, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 1
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 59
  br i1 %137, label %138, label %154

138:                                              ; preds = %132
  %139 = load i8*, i8** %13, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %138
  %145 = load i8*, i8** %13, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  %147 = call i8* @atoi(i8* %146)
  %148 = ptrtoint i8* %147 to i32
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %150 = load i32, i32* %11, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  store i32 %148, i32* %153, align 4
  br label %154

154:                                              ; preds = %144, %138, %132, %129, %119
  br label %161

155:                                              ; preds = %88, %67
  %156 = load i8*, i8** %12, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i8*, i8** %12, align 8
  store i8 0, i8* %159, align 1
  br label %160

160:                                              ; preds = %158, %155
  br label %161

161:                                              ; preds = %160, %154
  %162 = load i32*, i32** %4, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %165 = load i32, i32* %11, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %171 = load i32, i32* %11, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @msg_Dbg(i32* %162, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %163, i32 %169, i32 %175)
  %177 = load i32*, i32** %4, align 8
  %178 = load i8*, i8** %7, align 8
  %179 = call i32 @LoadImage(i32* %177, i8* %178)
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %181 = load i32, i32* %11, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 2
  store i32 %179, i32* %184, align 4
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %186 = load i32, i32* %11, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %161
  %193 = load i32*, i32** %4, align 8
  %194 = load i8*, i8** %7, align 8
  %195 = call i32 @msg_Warn(i32* %193, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %194)
  br label %196

196:                                              ; preds = %192, %161
  %197 = load i8*, i8** %12, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i8*, i8** %12, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 1
  store i8* %201, i8** %7, align 8
  br label %202

202:                                              ; preds = %199, %196
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %11, align 4
  %205 = add i32 %204, 1
  store i32 %205, i32* %11, align 4
  br label %61

206:                                              ; preds = %61
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = sub nsw i32 %209, 1
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  %213 = load i8*, i8** %8, align 8
  %214 = call i32 @free(i8* %213)
  br label %215

215:                                              ; preds = %206, %57, %22
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_5__* @calloc(i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @LoadImage(i32*, i8*) #1

declare dso_local i32 @msg_Warn(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
