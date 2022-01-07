; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_BoxGet_Internal.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_BoxGet_Internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@ATOM_root = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__**, %struct.TYPE_4__*, i8*, i32)* @MP4_BoxGet_Internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MP4_BoxGet_Internal(%struct.TYPE_4__** %0, %struct.TYPE_4__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %11, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %17, align 8
  br label %174

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @vasprintf(i8** %10, i8* %19, i32 %20)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i8* null, i8** %10, align 8
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27, %24
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @free(i8* %33)
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %35, align 8
  br label %174

36:                                               ; preds = %27
  %37 = load i8*, i8** %10, align 8
  store i8* %37, i8** %9, align 8
  br label %38

38:                                               ; preds = %165, %36
  %39 = call i32 @get_token(i8** %10, i8** %11, i32* %12)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  br label %168

42:                                               ; preds = %38
  %43 = load i8*, i8** %11, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %49, align 8
  br label %174

50:                                               ; preds = %42
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %75, label %54

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %66, %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = icmp ne %struct.TYPE_4__* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ATOM_root, align 8
  %63 = icmp ne i64 %61, %62
  br label %64

64:                                               ; preds = %58, %55
  %65 = phi i1 [ false, %55 ], [ %63, %58 ]
  br i1 %65, label %66, label %70

66:                                               ; preds = %64
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  store %struct.TYPE_4__* %69, %struct.TYPE_4__** %6, align 8
  br label %55

70:                                               ; preds = %64
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %72 = icmp ne %struct.TYPE_4__* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  br label %168

74:                                               ; preds = %70
  br label %164

75:                                               ; preds = %50
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  br label %163

80:                                               ; preds = %75
  %81 = load i8*, i8** %11, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %80
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  store %struct.TYPE_4__* %87, %struct.TYPE_4__** %6, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %89 = icmp ne %struct.TYPE_4__* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  br label %168

91:                                               ; preds = %84
  br label %162

92:                                               ; preds = %80
  %93 = load i8*, i8** %11, align 8
  %94 = call i32 @strlen(i8* %93)
  %95 = icmp eq i32 %94, 4
  br i1 %95, label %96, label %135

96:                                               ; preds = %92
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = load i8*, i8** %11, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = load i8*, i8** %11, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  %105 = load i8, i8* %104, align 1
  %106 = load i8*, i8** %11, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 3
  %108 = load i8, i8* %107, align 1
  %109 = call i64 @VLC_FOURCC(i8 signext %99, i8 signext %102, i8 signext %105, i8 signext %108)
  store i64 %109, i64* %13, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  store %struct.TYPE_4__* %112, %struct.TYPE_4__** %6, align 8
  br label %113

113:                                              ; preds = %130, %96
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %115 = icmp ne %struct.TYPE_4__* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  br label %168

117:                                              ; preds = %113
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %13, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %123
  br label %134

127:                                              ; preds = %123
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %127, %117
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  store %struct.TYPE_4__* %133, %struct.TYPE_4__** %6, align 8
  br label %113

134:                                              ; preds = %126
  br label %161

135:                                              ; preds = %92
  %136 = load i8*, i8** %11, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %159

140:                                              ; preds = %135
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  store %struct.TYPE_4__* %143, %struct.TYPE_4__** %6, align 8
  br label %144

144:                                              ; preds = %152, %140
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %146 = icmp ne %struct.TYPE_4__* %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %144
  br label %168

148:                                              ; preds = %144
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %148
  br label %158

152:                                              ; preds = %148
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %12, align 4
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  store %struct.TYPE_4__* %157, %struct.TYPE_4__** %6, align 8
  br label %144

158:                                              ; preds = %151
  br label %160

159:                                              ; preds = %135
  br label %168

160:                                              ; preds = %158
  br label %161

161:                                              ; preds = %160, %134
  br label %162

162:                                              ; preds = %161, %91
  br label %163

163:                                              ; preds = %162, %79
  br label %164

164:                                              ; preds = %163, %74
  br label %165

165:                                              ; preds = %164
  %166 = load i8*, i8** %11, align 8
  %167 = call i32 @free(i8* %166)
  br label %38

168:                                              ; preds = %159, %147, %116, %90, %73, %41
  %169 = load i8*, i8** %11, align 8
  %170 = call i32 @free(i8* %169)
  %171 = load i8*, i8** %9, align 8
  %172 = call i32 @free(i8* %171)
  %173 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %173, align 8
  br label %174

174:                                              ; preds = %168, %45, %32, %16
  ret void
}

declare dso_local i32 @vasprintf(i8**, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @get_token(i8**, i8**, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
