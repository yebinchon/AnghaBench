; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_write_tkhd.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_write_tkhd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"      <TrackHeader BoxType=\22tkhd\22>\0A\00", align 1
@notes = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [74 x i8] c"      <!-- Not shown here: CreationTime, ModificationTime, Duration. -->\0A\00", align 1
@.str.2 = private unnamed_addr constant [93 x i8] c"      <!-- These 3 fields are reported under MediaHeader below.   When reading these 3, -->\0A\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"      <!-- m2j_to_metadata currently doesn't distinguish between TrackHeader and MediaHeader source. -->\0A\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"      <!-- If both found, value read from MediaHeader is used. -->\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"        <TrackID>%u</TrackID>\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"        <TrackLayer>%d</TrackLayer>\0A\00", align 1
@.str.7 = private unnamed_addr constant [89 x i8] c"        <!-- front-to-back ordering of video tracks. 0 = normal, -1 is closer, etc. -->\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"        <Volume>\0A\00", align 1
@.str.9 = private unnamed_addr constant [111 x i8] c"          <!-- Track audio volume stored as fixed-point binary 8.8 value. Decimal value is approximation. -->\0A\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"          <!-- Full, normal (default) value is 0x0100 (1.0) -->\0A\00", align 1
@raw = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [33 x i8] c"          <AsHex>0x%04x</AsHex>\0A\00", align 1
@derived = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [40 x i8] c"          <AsDecimal>%6.3f</AsDecimal>\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"        </Volume>\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"        <TransformationMatrix>\0A\00", align 1
@.str.15 = private unnamed_addr constant [77 x i8] c"          <!-- Comments about matrix in MovieHeader apply here as well. -->\0A\00", align 1
@.str.16 = private unnamed_addr constant [67 x i8] c"          <!-- This matrix is applied before MovieHeader one. -->\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"          <TMa>0x%08x</TMa>\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"          <TMb>0x%08x</TMb>\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"          <TMu>0x%08x</TMu>\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"          <TMc>0x%08x</TMc>\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"          <TMd>0x%08x</TMd>\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"          <TMv>0x%08x</TMv>\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"          <TMx>0x%08x</TMx>\0A\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"          <TMy>0x%08x</TMy>\0A\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"          <TMw>0x%08x</TMw>\0A\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"        </TransformationMatrix>\0A\00", align 1
@.str.27 = private unnamed_addr constant [102 x i8] c"        <!-- Width and Height in pixels are for the presentation; frames will be scaled to this. -->\0A\00", align 1
@.str.28 = private unnamed_addr constant [101 x i8] c"        <!-- Both stored as fixed-point binary 16.16 values. Decimal values are approximations. -->\0A\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"        <Width>\0A\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"          <AsHex>0x%08x</AsHex>\0A\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"          <AsDecimal>%12.6f</AsDecimal>\0A\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"        </Width>\0A\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"        <Height>\0A\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"        </Height>\0A\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"      </TrackHeader>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xml_write_tkhd(i32* %0, i32* %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* @notes, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0))
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0))
  br label %22

22:                                               ; preds = %13, %4
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %22
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %36)
  %38 = load i64, i64* @notes, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 (i32*, i8*, ...) @fprintf(i32* %41, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.7, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %32
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %82

49:                                               ; preds = %44
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %52 = load i64, i64* @notes, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.9, i64 0, i64 0))
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 (i32*, i8*, ...) @fprintf(i32* %57, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i64 0, i64 0))
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i64, i64* @raw, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %62, %59
  %69 = load i64, i64* @derived, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32*, i32** %6, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = sitofp i32 %75 to double
  %77 = fdiv double %76, 2.560000e+02
  %78 = call i32 (i32*, i8*, ...) @fprintf(i32* %72, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), double %77)
  br label %79

79:                                               ; preds = %71, %68
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %44
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %163

87:                                               ; preds = %82
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 (i32*, i8*, ...) @fprintf(i32* %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %90 = load i64, i64* @notes, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 (i32*, i8*, ...) @fprintf(i32* %93, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.15, i64 0, i64 0))
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %95, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.16, i64 0, i64 0))
  br label %97

97:                                               ; preds = %92, %87
  %98 = load i32*, i32** %6, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32*, i8*, ...) @fprintf(i32* %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i32 %103)
  %105 = load i32*, i32** %6, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i32*, i8*, ...) @fprintf(i32* %105, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 %110)
  %112 = load i32*, i32** %6, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32*, i8*, ...) @fprintf(i32* %112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i32 %117)
  %119 = load i32*, i32** %6, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i32*, i8*, ...) @fprintf(i32* %119, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 %124)
  %126 = load i32*, i32** %6, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 4
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i32*, i8*, ...) @fprintf(i32* %126, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i32 %131)
  %133 = load i32*, i32** %6, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 5
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i32*, i8*, ...) @fprintf(i32* %133, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 %138)
  %140 = load i32*, i32** %6, align 8
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 6
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i32*, i8*, ...) @fprintf(i32* %140, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i32 %145)
  %147 = load i32*, i32** %6, align 8
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 7
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i32*, i8*, ...) @fprintf(i32* %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0), i32 %152)
  %154 = load i32*, i32** %6, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 8
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i32*, i8*, ...) @fprintf(i32* %154, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0), i32 %159)
  %161 = load i32*, i32** %6, align 8
  %162 = call i32 (i32*, i8*, ...) @fprintf(i32* %161, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0))
  br label %163

163:                                              ; preds = %97, %82
  %164 = load i64, i64* @notes, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load i32*, i32** %6, align 8
  %168 = call i32 (i32*, i8*, ...) @fprintf(i32* %167, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.27, i64 0, i64 0))
  %169 = load i32*, i32** %6, align 8
  %170 = call i32 (i32*, i8*, ...) @fprintf(i32* %169, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.28, i64 0, i64 0))
  br label %171

171:                                              ; preds = %166, %163
  %172 = load i32*, i32** %6, align 8
  %173 = call i32 (i32*, i8*, ...) @fprintf(i32* %172, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0))
  %174 = load i64, i64* @raw, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %171
  %177 = load i32*, i32** %6, align 8
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = call i32 (i32*, i8*, ...) @fprintf(i32* %177, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i64 0, i64 0), i32 %180)
  br label %182

182:                                              ; preds = %176, %171
  %183 = load i64, i64* @derived, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %182
  %186 = load i32*, i32** %6, align 8
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = sitofp i32 %189 to double
  %191 = fdiv double %190, 6.553600e+04
  %192 = call i32 (i32*, i8*, ...) @fprintf(i32* %186, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i64 0, i64 0), double %191)
  br label %193

193:                                              ; preds = %185, %182
  %194 = load i32*, i32** %6, align 8
  %195 = call i32 (i32*, i8*, ...) @fprintf(i32* %194, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0))
  %196 = load i32*, i32** %6, align 8
  %197 = call i32 (i32*, i8*, ...) @fprintf(i32* %196, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0))
  %198 = load i64, i64* @raw, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %193
  %201 = load i32*, i32** %6, align 8
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (i32*, i8*, ...) @fprintf(i32* %201, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i64 0, i64 0), i32 %204)
  br label %206

206:                                              ; preds = %200, %193
  %207 = load i64, i64* @derived, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %206
  %210 = load i32*, i32** %6, align 8
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 4
  %214 = sitofp i32 %213 to double
  %215 = fdiv double %214, 6.553600e+04
  %216 = call i32 (i32*, i8*, ...) @fprintf(i32* %210, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i64 0, i64 0), double %215)
  br label %217

217:                                              ; preds = %209, %206
  %218 = load i32*, i32** %6, align 8
  %219 = call i32 (i32*, i8*, ...) @fprintf(i32* %218, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0))
  %220 = load i32*, i32** %6, align 8
  %221 = call i32 (i32*, i8*, ...) @fprintf(i32* %220, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
