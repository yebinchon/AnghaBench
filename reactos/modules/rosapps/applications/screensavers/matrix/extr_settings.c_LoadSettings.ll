; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/matrix/extr_settings.c_LoadSettings.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/matrix/extr_settings.c_LoadSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Software\\Catch22\\Matrix Screen Saver\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"MessageSpeed\00", align 1
@MSGSPEED_MIN = common dso_local global i64 0, align 8
@MSGSPEED_MAX = common dso_local global i64 0, align 8
@g_nMessageSpeed = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"MatrixSpeed\00", align 1
@SPEED_MIN = common dso_local global i64 0, align 8
@SPEED_MAX = common dso_local global i64 0, align 8
@g_nMatrixSpeed = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"Density\00", align 1
@DENSITY_MIN = common dso_local global i64 0, align 8
@DENSITY_MAX = common dso_local global i64 0, align 8
@g_nDensity = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"FontSize\00", align 1
@FONT_MIN = common dso_local global i64 0, align 8
@FONT_MAX = common dso_local global i64 0, align 8
@g_nFontSize = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"FontBold\00", align 1
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@g_fFontBold = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"Randomize\00", align 1
@g_fRandomizeMessages = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"FontName\00", align 1
@g_szFontName = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"Arial\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Messages\00", align 1
@g_szMessages = common dso_local global i32* null, align 8
@g_nNumMessages = common dso_local global i64 0, align 8
@MAXMSG_LENGTH = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"ReactOS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LoadSettings() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = call i64* @malloc(i32 4096)
  store i64* %6, i64** %4, align 8
  %7 = load i64*, i64** %4, align 8
  store i64* %7, i64** %5, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = icmp eq i64* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %192

11:                                               ; preds = %0
  %12 = load i64*, i64** %4, align 8
  %13 = call i32 @ZeroMemory(i64* %12, i32 4096)
  %14 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %15 = call i64* @_T(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %16 = call i64* @_T(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @KEY_READ, align 4
  %18 = call i32 @RegCreateKeyEx(i32 %14, i64* %15, i32 0, i64* %16, i32 0, i32 %17, i32* null, i32* %1, i32* null)
  store i32 8, i32* %3, align 4
  %19 = load i64, i64* @ERROR_SUCCESS, align 8
  %20 = load i32, i32* %1, align 4
  %21 = call i64* @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %22 = bitcast i64* %2 to i32*
  %23 = call i64 @RegQueryValueEx(i32 %20, i64* %21, i32 0, i32 0, i32* %22, i32* %3)
  %24 = icmp eq i64 %19, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %11
  %26 = load i64, i64* %2, align 8
  %27 = load i64, i64* @MSGSPEED_MIN, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i64, i64* %2, align 8
  %31 = load i64, i64* @MSGSPEED_MAX, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* %2, align 8
  store i64 %34, i64* @g_nMessageSpeed, align 8
  br label %35

35:                                               ; preds = %33, %29, %25
  br label %36

36:                                               ; preds = %35, %11
  %37 = load i64, i64* @ERROR_SUCCESS, align 8
  %38 = load i32, i32* %1, align 4
  %39 = call i64* @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %40 = bitcast i64* %2 to i32*
  %41 = call i64 @RegQueryValueEx(i32 %38, i64* %39, i32 0, i32 0, i32* %40, i32* %3)
  %42 = icmp eq i64 %37, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load i64, i64* %2, align 8
  %45 = load i64, i64* @SPEED_MIN, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i64, i64* %2, align 8
  %49 = load i64, i64* @SPEED_MAX, align 8
  %50 = icmp sle i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* %2, align 8
  store i64 %52, i64* @g_nMatrixSpeed, align 8
  br label %53

53:                                               ; preds = %51, %47, %43
  br label %54

54:                                               ; preds = %53, %36
  %55 = load i64, i64* @ERROR_SUCCESS, align 8
  %56 = load i32, i32* %1, align 4
  %57 = call i64* @_T(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %58 = bitcast i64* %2 to i32*
  %59 = call i64 @RegQueryValueEx(i32 %56, i64* %57, i32 0, i32 0, i32* %58, i32* %3)
  %60 = icmp eq i64 %55, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %54
  %62 = load i64, i64* %2, align 8
  %63 = load i64, i64* @DENSITY_MIN, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i64, i64* %2, align 8
  %67 = load i64, i64* @DENSITY_MAX, align 8
  %68 = icmp sle i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i64, i64* %2, align 8
  store i64 %70, i64* @g_nDensity, align 8
  br label %71

71:                                               ; preds = %69, %65, %61
  br label %72

72:                                               ; preds = %71, %54
  %73 = load i64, i64* @ERROR_SUCCESS, align 8
  %74 = load i32, i32* %1, align 4
  %75 = call i64* @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %76 = bitcast i64* %2 to i32*
  %77 = call i64 @RegQueryValueEx(i32 %74, i64* %75, i32 0, i32 0, i32* %76, i32* %3)
  %78 = icmp eq i64 %73, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %72
  %80 = load i64, i64* %2, align 8
  %81 = load i64, i64* @FONT_MIN, align 8
  %82 = icmp sge i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i64, i64* %2, align 8
  %85 = load i64, i64* @FONT_MAX, align 8
  %86 = icmp sle i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i64, i64* %2, align 8
  store i64 %88, i64* @g_nFontSize, align 8
  br label %89

89:                                               ; preds = %87, %83, %79
  br label %90

90:                                               ; preds = %89, %72
  %91 = load i64, i64* @ERROR_SUCCESS, align 8
  %92 = load i32, i32* %1, align 4
  %93 = call i64* @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %94 = bitcast i64* %2 to i32*
  %95 = call i64 @RegQueryValueEx(i32 %92, i64* %93, i32 0, i32 0, i32* %94, i32* %3)
  %96 = icmp eq i64 %91, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %90
  %98 = load i64, i64* %2, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i8*, i8** @FALSE, align 8
  br label %104

102:                                              ; preds = %97
  %103 = load i8*, i8** @TRUE, align 8
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i8* [ %101, %100 ], [ %103, %102 ]
  store i8* %105, i8** @g_fFontBold, align 8
  br label %106

106:                                              ; preds = %104, %90
  %107 = load i64, i64* @ERROR_SUCCESS, align 8
  %108 = load i32, i32* %1, align 4
  %109 = call i64* @_T(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %110 = bitcast i64* %2 to i32*
  %111 = call i64 @RegQueryValueEx(i32 %108, i64* %109, i32 0, i32 0, i32* %110, i32* %3)
  %112 = icmp eq i64 %107, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %106
  %114 = load i64, i64* %2, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i8*, i8** @FALSE, align 8
  br label %120

118:                                              ; preds = %113
  %119 = load i8*, i8** @TRUE, align 8
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i8* [ %117, %116 ], [ %119, %118 ]
  store i8* %121, i8** @g_fRandomizeMessages, align 8
  br label %122

122:                                              ; preds = %120, %106
  store i32 512, i32* %3, align 4
  %123 = load i32, i32* %1, align 4
  %124 = call i64* @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %125 = load i64, i64* @g_szFontName, align 8
  %126 = inttoptr i64 %125 to i32*
  %127 = call i64 @RegQueryValueEx(i32 %123, i64* %124, i32 0, i32 0, i32* %126, i32* %3)
  %128 = load i64, i64* @ERROR_SUCCESS, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = load i64, i64* @g_szFontName, align 8
  %132 = call i64* @_T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %133 = call i32 @lstrcpy(i64 %131, i64* %132)
  br label %134

134:                                              ; preds = %130, %122
  store i32 4096, i32* %3, align 4
  %135 = load i64, i64* @ERROR_SUCCESS, align 8
  %136 = load i32, i32* %1, align 4
  %137 = call i64* @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %138 = load i64*, i64** %4, align 8
  %139 = bitcast i64* %138 to i32*
  %140 = call i64 @RegQueryValueEx(i32 %136, i64* %137, i32 0, i32 0, i32* %139, i32* %3)
  %141 = icmp eq i64 %135, %140
  br i1 %141, label %142, label %178

142:                                              ; preds = %134
  br label %143

143:                                              ; preds = %176, %142
  %144 = load i32, i32* %3, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %143
  %147 = load i64*, i64** %5, align 8
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load i64*, i64** %5, align 8
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @_istascii(i64 %152)
  %154 = icmp ne i64 %153, 0
  br label %155

155:                                              ; preds = %150, %146, %143
  %156 = phi i1 [ false, %146 ], [ false, %143 ], [ %154, %150 ]
  br i1 %156, label %157, label %177

157:                                              ; preds = %155
  %158 = load i64*, i64** %5, align 8
  %159 = call i64 @lstrlen(i64* %158)
  %160 = icmp sgt i64 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %157
  %162 = load i32*, i32** @g_szMessages, align 8
  %163 = load i64, i64* @g_nNumMessages, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i64*, i64** %5, align 8
  %167 = load i32, i32* @MAXMSG_LENGTH, align 4
  %168 = call i32 @lstrcpyn(i32 %165, i64* %166, i32 %167)
  %169 = load i64, i64* @g_nNumMessages, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* @g_nNumMessages, align 8
  %171 = load i64*, i64** %5, align 8
  %172 = call i64 @lstrlen(i64* %171)
  %173 = add nsw i64 %172, 1
  %174 = load i64*, i64** %5, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 %173
  store i64* %175, i64** %5, align 8
  br label %176

176:                                              ; preds = %161, %157
  br label %143

177:                                              ; preds = %155
  br label %187

178:                                              ; preds = %134
  %179 = load i32*, i32** @g_szMessages, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = call i64* @_T(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %183 = load i32, i32* @MAXMSG_LENGTH, align 4
  %184 = call i32 @lstrcpyn(i32 %181, i64* %182, i32 %183)
  %185 = load i64, i64* @g_nNumMessages, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* @g_nNumMessages, align 8
  br label %187

187:                                              ; preds = %178, %177
  %188 = load i32, i32* %1, align 4
  %189 = call i32 @RegCloseKey(i32 %188)
  %190 = load i64*, i64** %4, align 8
  %191 = call i32 @free(i64* %190)
  br label %192

192:                                              ; preds = %187, %10
  ret void
}

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @ZeroMemory(i64*, i32) #1

declare dso_local i32 @RegCreateKeyEx(i32, i64*, i32, i64*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64* @_T(i8*) #1

declare dso_local i64 @RegQueryValueEx(i32, i64*, i32, i32, i32*, i32*) #1

declare dso_local i32 @lstrcpy(i64, i64*) #1

declare dso_local i64 @_istascii(i64) #1

declare dso_local i64 @lstrlen(i64*) #1

declare dso_local i32 @lstrcpyn(i32, i64*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
