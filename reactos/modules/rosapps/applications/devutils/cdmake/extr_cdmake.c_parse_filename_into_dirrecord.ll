; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/cdmake/extr_cdmake.c_parse_filename_into_dirrecord.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/cdmake/extr_cdmake.c_parse_filename_into_dirrecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i64*, i8*, i64*, i64 }

@joliet = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"'%s' is not ISO-9660, aborting...\00", align 1
@MAX_EXTENSION_LENGTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"'%s' has too long extension, aborting...\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Directory with extension '%s'\00", align 1
@DIRECTORY_FLAG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"'%s' is a duplicate file name, aborting...\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"'%s' is not Joliet, aborting...\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Insufficient memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_4__*, i64)* @parse_filename_into_dirrecord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_filename_into_dirrecord(i8* %0, %struct.TYPE_4__* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %7, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %9, align 8
  store i32 1, i32* %11, align 4
  br label %19

19:                                               ; preds = %77, %3
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %80

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 46
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %7, align 8
  br label %80

32:                                               ; preds = %24
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = ptrtoint i8* %33 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = icmp ult i64 %39, 7
  br i1 %40, label %41, label %49

41:                                               ; preds = %32
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = load i8*, i8** %4, align 8
  %45 = call i8* @check_for_punctuation(i8 signext %43, i8* %44)
  %46 = ptrtoint i8* %45 to i8
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %8, align 8
  store i8 %46, i8* %47, align 1
  br label %56

49:                                               ; preds = %32
  %50 = load i64, i64* @joliet, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 (i8*, ...) @error_exit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %52, %49
  br label %56

56:                                               ; preds = %55, %41
  %57 = load i8*, i8** %9, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = ptrtoint i8* %57 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = icmp ult i64 %63, 7
  br i1 %64, label %65, label %70

65:                                               ; preds = %56
  %66 = load i8*, i8** %7, align 8
  %67 = load i8, i8* %66, align 1
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %9, align 8
  store i8 %67, i8* %68, align 1
  br label %77

70:                                               ; preds = %56
  %71 = load i64, i64* @joliet, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 (i8*, ...) @error_exit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %76, %65
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %7, align 8
  br label %19

80:                                               ; preds = %29, %19
  %81 = load i64, i64* @joliet, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %80
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @strlen(i8* %84)
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* @MAX_EXTENSION_LENGTH, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i8*, i8** %4, align 8
  %91 = call i32 (i8*, ...) @error_exit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %89, %83, %80
  %93 = load i8*, i8** %8, align 8
  store i8 0, i8* %93, align 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i64*, i64** %95, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @strcpy(i64* %96, i8* %97)
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %8, align 8
  br label %102

102:                                              ; preds = %131, %92
  %103 = load i8*, i8** %7, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %134

107:                                              ; preds = %102
  %108 = load i8*, i8** %8, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = load i8*, i8** %110, align 8
  %112 = ptrtoint i8* %108 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  %115 = icmp ult i64 %114, 7
  br i1 %115, label %116, label %124

116:                                              ; preds = %107
  %117 = load i8*, i8** %7, align 8
  %118 = load i8, i8* %117, align 1
  %119 = load i8*, i8** %4, align 8
  %120 = call i8* @check_for_punctuation(i8 signext %118, i8* %119)
  %121 = ptrtoint i8* %120 to i8
  %122 = load i8*, i8** %8, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %8, align 8
  store i8 %121, i8* %122, align 1
  br label %131

124:                                              ; preds = %107
  %125 = load i64, i64* @joliet, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load i8*, i8** %4, align 8
  %129 = call i32 (i8*, ...) @error_exit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %128)
  br label %130

130:                                              ; preds = %127, %124
  br label %131

131:                                              ; preds = %130, %116
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %7, align 8
  br label %102

134:                                              ; preds = %102
  %135 = load i8*, i8** %8, align 8
  store i8 0, i8* %135, align 1
  %136 = load i8*, i8** %9, align 8
  store i8 0, i8* %136, align 1
  %137 = load i64, i64* %6, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %157

139:                                              ; preds = %134
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %139
  %147 = load i64, i64* @joliet, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = load i8*, i8** %4, align 8
  %151 = call i32 (i8*, ...) @error_exit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %150)
  br label %152

152:                                              ; preds = %149, %146
  br label %153

153:                                              ; preds = %152, %139
  %154 = load i64, i64* @DIRECTORY_FLAG, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 5
  store i64 %154, i64* %156, align 8
  br label %160

157:                                              ; preds = %134
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 5
  store i64 0, i64* %159, align 8
  br label %160

160:                                              ; preds = %157, %153
  store i32 1, i32* %11, align 4
  br label %161

161:                                              ; preds = %197, %160
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %163 = call i64 @cdname_exists(%struct.TYPE_4__* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %215

165:                                              ; preds = %161
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @strlen(i8* %168)
  %170 = icmp slt i32 %169, 8
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = load i8*, i8** %4, align 8
  %173 = call i32 (i8*, ...) @error_exit(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %172)
  br label %174

174:                                              ; preds = %171, %165
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 46
  br i1 %181, label %182, label %191

182:                                              ; preds = %174
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @strlen(i8* %185)
  %187 = icmp slt i32 %186, 13
  br i1 %187, label %188, label %191

188:                                              ; preds = %182
  %189 = load i8*, i8** %4, align 8
  %190 = call i32 (i8*, ...) @error_exit(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %189)
  br label %191

191:                                              ; preds = %188, %182, %174
  %192 = load i32, i32* %11, align 4
  %193 = icmp sgt i32 %192, 255
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load i8*, i8** %4, align 8
  %196 = call i32 (i8*, ...) @error_exit(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %195)
  br label %197

197:                                              ; preds = %194, %191
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 8
  store i8 126, i8* %201, align 1
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 9
  %206 = call i32 @memset(i8* %205, i32 0, i32 5)
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 9
  %211 = load i32, i32* %11, align 4
  %212 = call i32 @sprintf(i8* %210, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %211)
  %213 = load i32, i32* %11, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %11, align 4
  br label %161

215:                                              ; preds = %161
  %216 = load i64, i64* @joliet, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %244

218:                                              ; preds = %215
  %219 = load i8*, i8** %4, align 8
  %220 = call i32 @strlen(i8* %219)
  store i32 %220, i32* %10, align 4
  %221 = load i32, i32* %10, align 4
  %222 = icmp sgt i32 %221, 64
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = load i8*, i8** %4, align 8
  %225 = call i32 (i8*, ...) @error_exit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %224)
  br label %226

226:                                              ; preds = %223, %218
  %227 = load i32, i32* %10, align 4
  %228 = add nsw i32 %227, 1
  %229 = call i64* @malloc(i32 %228)
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 4
  store i64* %229, i64** %231, align 8
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 4
  %234 = load i64*, i64** %233, align 8
  %235 = icmp eq i64* %234, null
  br i1 %235, label %236, label %238

236:                                              ; preds = %226
  %237 = call i32 (i8*, ...) @error_exit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %238

238:                                              ; preds = %236, %226
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 4
  %241 = load i64*, i64** %240, align 8
  %242 = load i8*, i8** %4, align 8
  %243 = call i32 @strcpy(i64* %241, i8* %242)
  br label %244

244:                                              ; preds = %238, %215
  ret void
}

declare dso_local i8* @check_for_punctuation(i8 signext, i8*) #1

declare dso_local i32 @error_exit(i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i64*, i8*) #1

declare dso_local i64 @cdname_exists(%struct.TYPE_4__*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
