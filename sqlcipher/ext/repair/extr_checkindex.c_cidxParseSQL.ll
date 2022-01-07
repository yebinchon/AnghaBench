; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/repair/extr_checkindex.c_cidxParseSQL.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/repair/extr_checkindex.c_cidxParseSQL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }

@SQLITE_OK = common dso_local global i32 0, align 4
@CIDX_PARSE_OPEN = common dso_local global i32 0, align 4
@CIDX_PARSE_EOF = common dso_local global i32 0, align 4
@CIDX_PARSE_COMMA = common dso_local global i32 0, align 4
@CIDX_PARSE_CLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"asc\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"where\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Parse error in: %s\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i8*)* @cidxParseSQL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cidxParseSQL(i32* %0, %struct.TYPE_4__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %8, align 8
  %17 = load i32, i32* @SQLITE_OK, align 4
  store i32 %17, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %14, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @cidxFindNext(i8* %21, i8** %8, i32* %13)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @CIDX_PARSE_OPEN, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %186

27:                                               ; preds = %3
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %8, align 8
  br label %32

32:                                               ; preds = %161, %27
  %33 = load i32, i32* %12, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %164

35:                                               ; preds = %32
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @cidxFindNext(i8* %36, i8** %8, i32* %13)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @CIDX_PARSE_EOF, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %186

42:                                               ; preds = %35
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @CIDX_PARSE_COMMA, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @CIDX_PARSE_CLOSE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %147

50:                                               ; preds = %46, %42
  %51 = load i32, i32* %12, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %147

53:                                               ; preds = %50
  %54 = load i8*, i8** %8, align 8
  store i8* %54, i8** %15, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %186

60:                                               ; preds = %53
  %61 = load i32, i32* %13, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %133

63:                                               ; preds = %60
  br label %64

64:                                               ; preds = %70, %63
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 -1
  %67 = load i8, i8* %66, align 1
  %68 = call i64 @cidx_isspace(i8 signext %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 -1
  store i8* %72, i8** %8, align 8
  br label %64

73:                                               ; preds = %64
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 -3
  %76 = call i64 @sqlite3_strnicmp(i8* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %97, label %78

78:                                               ; preds = %73
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 -4
  %81 = load i8, i8* %80, align 1
  %82 = call i64 @cidx_isident(i8 signext %81)
  %83 = icmp eq i64 0, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %78
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 -3
  store i8* %86, i8** %8, align 8
  br label %87

87:                                               ; preds = %93, %84
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 -1
  %90 = load i8, i8* %89, align 1
  %91 = call i64 @cidx_isspace(i8 signext %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 -1
  store i8* %95, i8** %8, align 8
  br label %87

96:                                               ; preds = %87
  br label %122

97:                                               ; preds = %78, %73
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 -4
  %100 = call i64 @sqlite3_strnicmp(i8* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %121, label %102

102:                                              ; preds = %97
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 -5
  %105 = load i8, i8* %104, align 1
  %106 = call i64 @cidx_isident(i8 signext %105)
  %107 = icmp eq i64 0, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %102
  %109 = load i8*, i8** %8, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 -4
  store i8* %110, i8** %8, align 8
  br label %111

111:                                              ; preds = %117, %108
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 -1
  %114 = load i8, i8* %113, align 1
  %115 = call i64 @cidx_isspace(i8 signext %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 -1
  store i8* %119, i8** %8, align 8
  br label %111

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120, %102, %97
  br label %122

122:                                              ; preds = %121, %96
  br label %123

123:                                              ; preds = %129, %122
  %124 = load i8*, i8** %9, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = call i64 @cidx_isspace(i8 signext %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load i8*, i8** %9, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %9, align 8
  br label %123

132:                                              ; preds = %123
  br label %133

133:                                              ; preds = %132, %60
  %134 = load i8*, i8** %8, align 8
  %135 = load i8*, i8** %9, align 8
  %136 = ptrtoint i8* %134 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  %139 = load i8*, i8** %9, align 8
  %140 = call i8* (i32*, i8*, ...) @cidxMprintf(i32* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %138, i8* %139)
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  store i8* %140, i8** %142, align 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 1
  store %struct.TYPE_5__* %144, %struct.TYPE_5__** %14, align 8
  %145 = load i8*, i8** %15, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  store i8* %146, i8** %9, align 8
  store i8* %146, i8** %8, align 8
  br label %147

147:                                              ; preds = %133, %50, %46
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @CIDX_PARSE_OPEN, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %12, align 4
  br label %154

154:                                              ; preds = %151, %147
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @CIDX_PARSE_CLOSE, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %12, align 4
  br label %161

161:                                              ; preds = %158, %154
  %162 = load i8*, i8** %8, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %8, align 8
  br label %32

164:                                              ; preds = %32
  %165 = load i8*, i8** %8, align 8
  %166 = call i32 @cidxFindNext(i8* %165, i8** %8, i32* null)
  %167 = load i8*, i8** %8, align 8
  %168 = call i64 @sqlite3_strnicmp(i8* %167, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %169 = icmp eq i64 0, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %164
  %171 = load i8*, i8** %8, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 5
  %173 = call i8* (i32*, i8*, ...) @cidxMprintf(i32* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %172)
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  store i8* %173, i8** %175, align 8
  br label %184

176:                                              ; preds = %164
  %177 = load i8*, i8** %8, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  br label %186

183:                                              ; preds = %176
  br label %184

184:                                              ; preds = %183, %170
  %185 = load i32, i32* %11, align 4
  store i32 %185, i32* %4, align 4
  br label %191

186:                                              ; preds = %182, %59, %41, %26
  %187 = load i32*, i32** %5, align 8
  %188 = load i8*, i8** %7, align 8
  %189 = call i32 @cidxCursorError(i32* %187, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %188)
  %190 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %190, i32* %4, align 4
  br label %191

191:                                              ; preds = %186, %184
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

declare dso_local i32 @cidxFindNext(i8*, i8**, i32*) #1

declare dso_local i64 @cidx_isspace(i8 signext) #1

declare dso_local i64 @sqlite3_strnicmp(i8*, i8*, i32) #1

declare dso_local i64 @cidx_isident(i8 signext) #1

declare dso_local i8* @cidxMprintf(i32*, i8*, ...) #1

declare dso_local i32 @cidxCursorError(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
