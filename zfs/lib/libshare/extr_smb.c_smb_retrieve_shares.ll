; ModuleID = '/home/carl/AnghaBench/zfs/lib/libshare/extr_smb.c_smb_retrieve_shares.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libshare/extr_smb.c_smb_retrieve_shares.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.dirent = type { i8* }
%struct.stat = type { i32 }

@SA_OK = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@SHARE_DIR = common dso_local global i8* null, align 8
@SA_SYSTEM_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SA_NO_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"guest_ok\00", align 1
@smb_shares = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @smb_retrieve_shares to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_retrieve_shares() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [512 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.dirent*, align 8
  %17 = alloca %struct.stat, align 4
  %18 = alloca %struct.TYPE_3__*, align 8
  %19 = alloca %struct.TYPE_3__*, align 8
  %20 = alloca i32, align 4
  %21 = load i32, i32* @SA_OK, align 4
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* @PATH_MAX, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %3, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %4, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i32* null, i32** %15, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %19, align 8
  %26 = load i8*, i8** @SHARE_DIR, align 8
  %27 = call i32* @opendir(i8* %26)
  store i32* %27, i32** %14, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %0
  %31 = load i32, i32* @SA_SYSTEM_ERR, align 4
  store i32 %31, i32* %1, align 4
  store i32 1, i32* %20, align 4
  br label %231

32:                                               ; preds = %0
  br label %33

33:                                               ; preds = %217, %62, %45, %32
  %34 = load i32*, i32** %14, align 8
  %35 = call %struct.dirent* @readdir(i32* %34)
  store %struct.dirent* %35, %struct.dirent** %16, align 8
  %36 = icmp ne %struct.dirent* %35, null
  br i1 %36, label %37, label %226

37:                                               ; preds = %33
  %38 = load %struct.dirent*, %struct.dirent** %16, align 8
  %39 = getelementptr inbounds %struct.dirent, %struct.dirent* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 46
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %33

46:                                               ; preds = %37
  %47 = trunc i64 %23 to i32
  %48 = load i8*, i8** @SHARE_DIR, align 8
  %49 = load %struct.dirent*, %struct.dirent** %16, align 8
  %50 = getelementptr inbounds %struct.dirent, %struct.dirent* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @snprintf(i8* %25, i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %48, i8* %51)
  %53 = call i32 @stat(i8* %25, %struct.stat* %17)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @SA_SYSTEM_ERR, align 4
  store i32 %56, i32* %2, align 4
  br label %211

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @S_ISREG(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  br label %33

63:                                               ; preds = %57
  %64 = call i32* @fopen(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %64, i32** %15, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @SA_SYSTEM_ERR, align 4
  store i32 %67, i32* %2, align 4
  br label %211

68:                                               ; preds = %63
  %69 = load %struct.dirent*, %struct.dirent** %16, align 8
  %70 = getelementptr inbounds %struct.dirent, %struct.dirent* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i8* @strdup(i8* %71)
  store i8* %72, i8** %12, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @SA_NO_MEMORY, align 4
  store i32 %76, i32* %2, align 4
  br label %211

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %209, %171, %121, %88, %77
  %79 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %80 = load i32*, i32** %15, align 8
  %81 = call i64 @fgets(i8* %79, i32 512, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %210

83:                                               ; preds = %78
  %84 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %85 = load i8, i8* %84, align 16
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 35
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %78

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %110, %89
  %91 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %92 = call i32 @strlen(i8* %91)
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 13
  br i1 %98, label %108, label %99

99:                                               ; preds = %90
  %100 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %101 = call i32 @strlen(i8* %100)
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 10
  br label %108

108:                                              ; preds = %99, %90
  %109 = phi i1 [ true, %90 ], [ %107, %99 ]
  br i1 %109, label %110, label %116

110:                                              ; preds = %108
  %111 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %112 = call i32 @strlen(i8* %111)
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 %114
  store i8 0, i8* %115, align 1
  br label %90

116:                                              ; preds = %108
  %117 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %118 = call i8* @strchr(i8* %117, i8 signext 61)
  store i8* %118, i8** %6, align 8
  %119 = load i8*, i8** %6, align 8
  %120 = icmp eq i8* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %78

122:                                              ; preds = %116
  %123 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  store i8* %123, i8** %7, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  store i8* %125, i8** %8, align 8
  %126 = load i8*, i8** %6, align 8
  store i8 0, i8* %126, align 1
  %127 = load i8*, i8** %8, align 8
  %128 = call i8* @strdup(i8* %127)
  store i8* %128, i8** %9, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = icmp eq i8* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %122
  %132 = load i32, i32* @SA_NO_MEMORY, align 4
  store i32 %132, i32* %2, align 4
  br label %211

133:                                              ; preds = %122
  %134 = load i8*, i8** %7, align 8
  %135 = call i64 @strcmp(i8* %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load i8*, i8** %10, align 8
  %139 = call i32 @free(i8* %138)
  %140 = load i8*, i8** %9, align 8
  store i8* %140, i8** %10, align 8
  br label %162

141:                                              ; preds = %133
  %142 = load i8*, i8** %7, align 8
  %143 = call i64 @strcmp(i8* %142, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i8*, i8** %11, align 8
  %147 = call i32 @free(i8* %146)
  %148 = load i8*, i8** %9, align 8
  store i8* %148, i8** %11, align 8
  br label %161

149:                                              ; preds = %141
  %150 = load i8*, i8** %7, align 8
  %151 = call i64 @strcmp(i8* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i8*, i8** %13, align 8
  %155 = call i32 @free(i8* %154)
  %156 = load i8*, i8** %9, align 8
  store i8* %156, i8** %13, align 8
  br label %160

157:                                              ; preds = %149
  %158 = load i8*, i8** %9, align 8
  %159 = call i32 @free(i8* %158)
  br label %160

160:                                              ; preds = %157, %153
  br label %161

161:                                              ; preds = %160, %145
  br label %162

162:                                              ; preds = %161, %137
  store i8* null, i8** %9, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = icmp eq i8* %163, null
  br i1 %164, label %171, label %165

165:                                              ; preds = %162
  %166 = load i8*, i8** %11, align 8
  %167 = icmp eq i8* %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  %169 = load i8*, i8** %13, align 8
  %170 = icmp eq i8* %169, null
  br i1 %170, label %171, label %172

171:                                              ; preds = %168, %165, %162
  br label %78

172:                                              ; preds = %168
  %173 = call i64 @malloc(i32 24)
  %174 = inttoptr i64 %173 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %174, %struct.TYPE_3__** %18, align 8
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %176 = icmp eq %struct.TYPE_3__* %175, null
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = load i32, i32* @SA_NO_MEMORY, align 4
  store i32 %178, i32* %2, align 4
  br label %211

179:                                              ; preds = %172
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = load i8*, i8** %12, align 8
  %184 = call i32 @strlcpy(i32 %182, i8* %183, i32 4)
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = load i8*, i8** %10, align 8
  %189 = call i32 @strlcpy(i32 %187, i8* %188, i32 4)
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load i8*, i8** %11, align 8
  %194 = call i32 @strlcpy(i32 %192, i8* %193, i32 4)
  %195 = load i8*, i8** %13, align 8
  %196 = call i32 @atoi(i8* %195)
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 8
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  store %struct.TYPE_3__* %199, %struct.TYPE_3__** %201, align 8
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  store %struct.TYPE_3__* %202, %struct.TYPE_3__** %19, align 8
  %203 = load i8*, i8** %10, align 8
  %204 = call i32 @free(i8* %203)
  %205 = load i8*, i8** %11, align 8
  %206 = call i32 @free(i8* %205)
  %207 = load i8*, i8** %13, align 8
  %208 = call i32 @free(i8* %207)
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %13, align 8
  br label %209

209:                                              ; preds = %179
  br label %78

210:                                              ; preds = %78
  br label %211

211:                                              ; preds = %210, %177, %131, %75, %66, %55
  %212 = load i32*, i32** %15, align 8
  %213 = icmp ne i32* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load i32*, i32** %15, align 8
  %216 = call i32 @fclose(i32* %215)
  store i32* null, i32** %15, align 8
  br label %217

217:                                              ; preds = %214, %211
  %218 = load i8*, i8** %12, align 8
  %219 = call i32 @free(i8* %218)
  %220 = load i8*, i8** %10, align 8
  %221 = call i32 @free(i8* %220)
  %222 = load i8*, i8** %11, align 8
  %223 = call i32 @free(i8* %222)
  %224 = load i8*, i8** %13, align 8
  %225 = call i32 @free(i8* %224)
  store i8* null, i8** %12, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %13, align 8
  br label %33

226:                                              ; preds = %33
  %227 = load i32*, i32** %14, align 8
  %228 = call i32 @closedir(i32* %227)
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  store %struct.TYPE_3__* %229, %struct.TYPE_3__** @smb_shares, align 8
  %230 = load i32, i32* %2, align 4
  store i32 %230, i32* %1, align 4
  store i32 1, i32* %20, align 4
  br label %231

231:                                              ; preds = %226, %30
  %232 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %232)
  %233 = load i32, i32* %1, align 4
  ret i32 %233
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @S_ISREG(i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
