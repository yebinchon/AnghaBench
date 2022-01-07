; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_ftp.c_FTP_ParseNextFile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_ftp.c_FTP_ParseNextFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, i32*, i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i32 }

@FTP_ParseNextFile.szSpace = internal constant [3 x i8] c" \09\00", align 1
@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"Is directory\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Size: %s\0A\00", align 1
@szMonths = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Mod time: %02d:%02d:%02d  %04d/%02d/%02d\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"File: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%d-%d-%d\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"<DIR>\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"Size: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Name: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"EPLF Format not implemented\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Matched: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32*, %struct.TYPE_9__*)* @FTP_ParseNextFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @FTP_ParseNextFile(i32 %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %20 = load i8*, i8** @FALSE, align 8
  store i8* %20, i8** %12, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %406, %3
  %24 = load i32, i32* %5, align 4
  %25 = call i8* @FTP_GetNextLine(i32 %24, i32* %8)
  store i8* %25, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** @FALSE, align 8
  store i8* %28, i8** %4, align 8
  br label %412

29:                                               ; preds = %23
  %30 = load i8*, i8** %9, align 8
  %31 = call i8* @strtok(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @FTP_ParseNextFile.szSpace, i64 0, i64 0))
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @isdigit(i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %222, label %37

37:                                               ; preds = %29
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = icmp eq i32 10, %39
  br i1 %40, label %41, label %222

41:                                               ; preds = %37
  %42 = load i8*, i8** %10, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = call i32 @FTP_ParsePermission(i8* %42, %struct.TYPE_9__* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** @FALSE, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %46, %41
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %59, %50
  %52 = load i32, i32* %13, align 4
  %53 = icmp sle i32 %52, 3
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @FTP_ParseNextFile.szSpace, i64 0, i64 0))
  store i8* %55, i8** %10, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  br label %62

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  br label %51

62:                                               ; preds = %57, %51
  %63 = load i8*, i8** %10, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br label %406

66:                                               ; preds = %62
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i8* null, i8** %74, align 8
  br label %82

75:                                               ; preds = %66
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %76)
  %78 = load i8*, i8** %10, align 8
  %79 = call i8* @atol(i8* %78)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %75, %71
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 5
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i32 0, i32* %91, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  store i32 0, i32* %94, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  store i32 0, i32* %97, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 4
  store i32 0, i32* %100, align 8
  %101 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @FTP_ParseNextFile.szSpace, i64 0, i64 0))
  store i8* %101, i8** %10, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %82
  br label %406

105:                                              ; preds = %82
  %106 = load i8*, i8** %10, align 8
  %107 = call i32 @strlen(i8* %106)
  %108 = icmp sge i32 %107, 3
  br i1 %108, label %109, label %129

109:                                              ; preds = %105
  %110 = load i8*, i8** %10, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 3
  store i8 0, i8* %111, align 1
  %112 = load i8*, i8** @szMonths, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = call i8* @StrStrIA(i8* %112, i8* %113)
  store i8* %114, i8** %11, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %128

116:                                              ; preds = %109
  %117 = load i8*, i8** %11, align 8
  %118 = load i8*, i8** @szMonths, align 8
  %119 = ptrtoint i8* %117 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  %122 = sdiv i64 %121, 3
  %123 = add nsw i64 %122, 1
  %124 = trunc i64 %123 to i32
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 3
  store i32 %124, i32* %127, align 4
  br label %128

128:                                              ; preds = %116, %109
  br label %129

129:                                              ; preds = %128, %105
  %130 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @FTP_ParseNextFile.szSpace, i64 0, i64 0))
  store i8* %130, i8** %10, align 8
  %131 = load i8*, i8** %10, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  br label %406

134:                                              ; preds = %129
  %135 = load i8*, i8** %10, align 8
  %136 = call i8* @atoi(i8* %135)
  %137 = ptrtoint i8* %136 to i32
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  store i32 %137, i32* %140, align 8
  %141 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @FTP_ParseNextFile.szSpace, i64 0, i64 0))
  store i8* %141, i8** %10, align 8
  %142 = load i8*, i8** %10, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %134
  br label %406

145:                                              ; preds = %134
  %146 = load i8*, i8** %10, align 8
  %147 = call i8* @strchr(i8* %146, i8 signext 58)
  store i8* %147, i8** %11, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %171

149:                                              ; preds = %145
  %150 = load i8*, i8** %11, align 8
  store i8 0, i8* %150, align 1
  %151 = load i8*, i8** %11, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %11, align 8
  %153 = load i8*, i8** %11, align 8
  %154 = call i8* @atoi(i8* %153)
  %155 = ptrtoint i8* %154 to i32
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = call i8* @atoi(i8* %159)
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 4
  %165 = call i32 @GetLocalTime(%struct.TYPE_8__* %14)
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 4
  store i32 %167, i32* %170, align 8
  br label %181

171:                                              ; preds = %145
  %172 = load i8*, i8** %10, align 8
  %173 = call i8* @atoi(i8* %172)
  %174 = ptrtoint i8* %173 to i32
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 4
  store i32 %174, i32* %177, align 8
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  store i32 12, i32* %180, align 4
  br label %181

181:                                              ; preds = %171, %149
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 5
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %185, i32 %189, i64 %193, i32 %197, i32 %201, i32 %205)
  %207 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @FTP_ParseNextFile.szSpace, i64 0, i64 0))
  store i8* %207, i8** %10, align 8
  %208 = load i8*, i8** %10, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %211, label %210

210:                                              ; preds = %181
  br label %406

211:                                              ; preds = %181
  %212 = load i8*, i8** %10, align 8
  %213 = call i8* @heap_strdupAtoW(i8* %212)
  %214 = bitcast i8* %213 to i32*
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 2
  store i32* %214, i32** %216, align 8
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 2
  %219 = load i32*, i32** %218, align 8
  %220 = call i8* @debugstr_w(i32* %219)
  %221 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %220)
  br label %375

222:                                              ; preds = %37, %29
  %223 = load i8*, i8** %10, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 0
  %225 = load i8, i8* %224, align 1
  %226 = call i64 @isdigit(i8 signext %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %365

228:                                              ; preds = %222
  %229 = load i8*, i8** %10, align 8
  %230 = call i32 @strlen(i8* %229)
  %231 = icmp eq i32 8, %230
  br i1 %231, label %232, label %365

232:                                              ; preds = %228
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 1
  store i32 65535, i32* %234, align 8
  %235 = load i8*, i8** %10, align 8
  %236 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %235, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %15, i32* %16, i32* %17)
  %237 = load i32, i32* %16, align 4
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 4
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 2
  store i32 %237, i32* %240, align 8
  %241 = load i32, i32* %15, align 4
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 3
  store i32 %241, i32* %244, align 4
  %245 = load i32, i32* %17, align 4
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 4
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 4
  store i32 %245, i32* %248, align 8
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 4
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 8
  %253 = icmp slt i32 %252, 70
  br i1 %253, label %254, label %260

254:                                              ; preds = %232
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 4
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = add nsw i32 %258, 2000
  store i32 %259, i32* %257, align 8
  br label %260

260:                                              ; preds = %254, %232
  %261 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @FTP_ParseNextFile.szSpace, i64 0, i64 0))
  store i8* %261, i8** %10, align 8
  %262 = load i8*, i8** %10, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  br label %406

265:                                              ; preds = %260
  %266 = load i8*, i8** %10, align 8
  %267 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %266, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* %18, i32* %19)
  %268 = load i32, i32* %18, align 4
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 4
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 1
  store i32 %268, i32* %271, align 4
  %272 = load i32, i32* %19, align 4
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 4
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 0
  store i32 %272, i32* %275, align 8
  %276 = load i8*, i8** %10, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 5
  %278 = load i8, i8* %277, align 1
  %279 = sext i8 %278 to i32
  %280 = icmp eq i32 %279, 80
  br i1 %280, label %281, label %293

281:                                              ; preds = %265
  %282 = load i8*, i8** %10, align 8
  %283 = getelementptr inbounds i8, i8* %282, i64 6
  %284 = load i8, i8* %283, align 1
  %285 = sext i8 %284 to i32
  %286 = icmp eq i32 %285, 77
  br i1 %286, label %287, label %293

287:                                              ; preds = %281
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 4
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = add nsw i32 %291, 12
  store i32 %292, i32* %290, align 4
  br label %293

293:                                              ; preds = %287, %281, %265
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 4
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 5
  store i64 0, i64* %296, align 8
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 4
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 4
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 4
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 5
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 4
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 4
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 4
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %300, i32 %304, i64 %308, i32 %312, i32 %316, i32 %320)
  %322 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @FTP_ParseNextFile.szSpace, i64 0, i64 0))
  store i8* %322, i8** %10, align 8
  %323 = load i8*, i8** %10, align 8
  %324 = icmp ne i8* %323, null
  br i1 %324, label %326, label %325

325:                                              ; preds = %293
  br label %406

326:                                              ; preds = %293
  %327 = load i8*, i8** %10, align 8
  %328 = call i32 @strcasecmp(i8* %327, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %337, label %330

330:                                              ; preds = %326
  %331 = load i8*, i8** @TRUE, align 8
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 3
  store i8* %331, i8** %333, align 8
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 0
  store i8* null, i8** %335, align 8
  %336 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %349

337:                                              ; preds = %326
  %338 = load i8*, i8** @FALSE, align 8
  %339 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 3
  store i8* %338, i8** %340, align 8
  %341 = load i8*, i8** %10, align 8
  %342 = call i8* @atol(i8* %341)
  %343 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i32 0, i32 0
  store i8* %342, i8** %344, align 8
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 0
  %347 = load i8*, i8** %346, align 8
  %348 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %347)
  br label %349

349:                                              ; preds = %337, %330
  %350 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @FTP_ParseNextFile.szSpace, i64 0, i64 0))
  store i8* %350, i8** %10, align 8
  %351 = load i8*, i8** %10, align 8
  %352 = icmp ne i8* %351, null
  br i1 %352, label %354, label %353

353:                                              ; preds = %349
  br label %406

354:                                              ; preds = %349
  %355 = load i8*, i8** %10, align 8
  %356 = call i8* @heap_strdupAtoW(i8* %355)
  %357 = bitcast i8* %356 to i32*
  %358 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 2
  store i32* %357, i32** %359, align 8
  %360 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %361 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %360, i32 0, i32 2
  %362 = load i32*, i32** %361, align 8
  %363 = call i8* @debugstr_w(i32* %362)
  %364 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %363)
  br label %374

365:                                              ; preds = %228, %222
  %366 = load i8*, i8** %10, align 8
  %367 = getelementptr inbounds i8, i8* %366, i64 0
  %368 = load i8, i8* %367, align 1
  %369 = sext i8 %368 to i32
  %370 = icmp eq i32 %369, 43
  br i1 %370, label %371, label %373

371:                                              ; preds = %365
  %372 = call i32 @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %373

373:                                              ; preds = %371, %365
  br label %374

374:                                              ; preds = %373, %354
  br label %375

375:                                              ; preds = %374, %211
  %376 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %377 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %376, i32 0, i32 2
  %378 = load i32*, i32** %377, align 8
  %379 = icmp ne i32* %378, null
  br i1 %379, label %380, label %405

380:                                              ; preds = %375
  %381 = load i32*, i32** %6, align 8
  %382 = icmp eq i32* %381, null
  br i1 %382, label %390, label %383

383:                                              ; preds = %380
  %384 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %384, i32 0, i32 2
  %386 = load i32*, i32** %385, align 8
  %387 = load i32*, i32** %6, align 8
  %388 = call i64 @PathMatchSpecW(i32* %386, i32* %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %397

390:                                              ; preds = %383, %380
  %391 = load i8*, i8** @TRUE, align 8
  store i8* %391, i8** %12, align 8
  %392 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %393 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %392, i32 0, i32 2
  %394 = load i32*, i32** %393, align 8
  %395 = call i8* @debugstr_w(i32* %394)
  %396 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %395)
  br label %404

397:                                              ; preds = %383
  %398 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %399 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %398, i32 0, i32 2
  %400 = load i32*, i32** %399, align 8
  %401 = call i32 @heap_free(i32* %400)
  %402 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %403 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %402, i32 0, i32 2
  store i32* null, i32** %403, align 8
  br label %404

404:                                              ; preds = %397, %390
  br label %405

405:                                              ; preds = %404, %375
  br label %406

406:                                              ; preds = %405, %353, %325, %264, %210, %144, %133, %104, %65
  %407 = load i8*, i8** %12, align 8
  %408 = icmp ne i8* %407, null
  %409 = xor i1 %408, true
  br i1 %409, label %23, label %410

410:                                              ; preds = %406
  %411 = load i8*, i8** @TRUE, align 8
  store i8* %411, i8** %4, align 8
  br label %412

412:                                              ; preds = %410, %27
  %413 = load i8*, i8** %4, align 8
  ret i8* %413
}

declare dso_local i8* @FTP_GetNextLine(i32, i32*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @FTP_ParsePermission(i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i8* @atol(i8*) #1

declare dso_local i8* @StrStrIA(i8*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @GetLocalTime(%struct.TYPE_8__*) #1

declare dso_local i8* @heap_strdupAtoW(i8*) #1

declare dso_local i8* @debugstr_w(i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, ...) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i64 @PathMatchSpecW(i32*, i32*) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
