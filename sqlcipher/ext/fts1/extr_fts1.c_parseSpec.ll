; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_parseSpec.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_parseSpec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i64, i8**, i8**, i32 }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"tokenize simple\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"tokenize\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"c%d%s\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i8**, i8**)* @parseSpec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseSpec(%struct.TYPE_5__* %0, i32 %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i8* null, i8** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp sge i32 %17, 3
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = call i32 @memset(%struct.TYPE_5__* %21, i32 0, i32 48)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %39, %4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load i8**, i8*** %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = add nsw i64 %33, 1
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %23

42:                                               ; preds = %23
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 8, %44
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %45, %47
  %49 = trunc i64 %48 to i32
  %50 = call i8* @malloc(i32 %49)
  %51 = bitcast i8* %50 to i8**
  store i8** %51, i8*** %14, align 8
  %52 = load i8**, i8*** %14, align 8
  %53 = icmp eq i8** %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %55, i32* %5, align 4
  br label %227

56:                                               ; preds = %42
  %57 = load i8**, i8*** %14, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = bitcast i8** %60 to i8*
  store i8* %61, i8** %12, align 8
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %84, %56
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %62
  %67 = load i8*, i8** %12, align 8
  %68 = load i8**, i8*** %14, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  store i8* %67, i8** %71, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i8**, i8*** %8, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @strcpy(i8* %72, i8* %77)
  %79 = load i8*, i8** %12, align 8
  %80 = call i64 @strlen(i8* %79)
  %81 = add nsw i64 %80, 1
  %82 = load i8*, i8** %12, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 %81
  store i8* %83, i8** %12, align 8
  br label %84

84:                                               ; preds = %66
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %62

87:                                               ; preds = %62
  %88 = load i8**, i8*** %14, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 1
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load i8**, i8*** %14, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 2
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  store i64 0, i64* %99, align 8
  %100 = load i8**, i8*** %14, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  store i8** %100, i8*** %102, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  store i32 3, i32* %10, align 4
  br label %103

103:                                              ; preds = %138, %87
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %141

107:                                              ; preds = %103
  %108 = load i8**, i8*** %14, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @startsWith(i8* %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %107
  %116 = load i8**, i8*** %14, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  store i8* %120, i8** %15, align 8
  br label %137

121:                                              ; preds = %107
  %122 = load i8**, i8*** %14, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i8* @firstToken(i8* %126, i8** %13)
  %128 = load i8**, i8*** %14, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds i8*, i8** %128, i64 %131
  store i8* %127, i8** %132, align 8
  store i8* %127, i8** %12, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %134, align 8
  br label %137

137:                                              ; preds = %121, %115
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %10, align 4
  br label %103

141:                                              ; preds = %103
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load i8**, i8*** %14, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %148, align 8
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 2
  store i64 1, i64* %150, align 8
  br label %151

151:                                              ; preds = %146, %141
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = mul i64 %154, 8
  %156 = trunc i64 %155 to i32
  %157 = call i8* @malloc(i32 %156)
  %158 = bitcast i8* %157 to i8**
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 4
  store i8** %158, i8*** %160, align 8
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 4
  %163 = load i8**, i8*** %162, align 8
  %164 = icmp eq i8** %163, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %151
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %167 = call i32 @clearTableSpec(%struct.TYPE_5__* %166)
  %168 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %168, i32* %5, align 4
  br label %227

169:                                              ; preds = %151
  store i32 0, i32* %10, align 4
  br label %170

170:                                              ; preds = %214, %169
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp ult i64 %172, %175
  br i1 %176, label %177, label %217

177:                                              ; preds = %170
  %178 = load i32, i32* %10, align 4
  %179 = load i8**, i8*** %14, align 8
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %179, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %178, i8* %183)
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 4
  %187 = load i8**, i8*** %186, align 8
  %188 = load i32, i32* %10, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8*, i8** %187, i64 %189
  store i8* %184, i8** %190, align 8
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 4
  %193 = load i8**, i8*** %192, align 8
  %194 = load i32, i32* %10, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i8*, i8** %196, align 8
  store i8* %197, i8** %16, align 8
  br label %198

198:                                              ; preds = %210, %177
  %199 = load i8*, i8** %16, align 8
  %200 = load i8, i8* %199, align 1
  %201 = icmp ne i8 %200, 0
  br i1 %201, label %202, label %213

202:                                              ; preds = %198
  %203 = load i8*, i8** %16, align 8
  %204 = load i8, i8* %203, align 1
  %205 = call i32 @safe_isalnum(i8 signext %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %202
  %208 = load i8*, i8** %16, align 8
  store i8 95, i8* %208, align 1
  br label %209

209:                                              ; preds = %207, %202
  br label %210

210:                                              ; preds = %209
  %211 = load i8*, i8** %16, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %16, align 8
  br label %198

213:                                              ; preds = %198
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %10, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %10, align 4
  br label %170

217:                                              ; preds = %170
  %218 = load i8*, i8** %15, align 8
  %219 = call i32 @tokenizeString(i8* %218, i32* %11)
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 5
  store i32 %219, i32* %221, align 8
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @tokenListToIdList(i32 %224)
  %226 = load i32, i32* @SQLITE_OK, align 4
  store i32 %226, i32* %5, align 4
  br label %227

227:                                              ; preds = %217, %165, %54
  %228 = load i32, i32* %5, align 4
  ret i32 %228
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @startsWith(i8*, i8*) #1

declare dso_local i8* @firstToken(i8*, i8**) #1

declare dso_local i32 @clearTableSpec(%struct.TYPE_5__*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i32, i8*) #1

declare dso_local i32 @safe_isalnum(i8 signext) #1

declare dso_local i32 @tokenizeString(i8*, i32*) #1

declare dso_local i32 @tokenListToIdList(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
