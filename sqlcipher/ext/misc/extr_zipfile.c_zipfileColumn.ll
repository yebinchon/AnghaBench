; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileColumn.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, %struct.TYPE_7__*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i8*, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SQLITE_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @zipfileColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zipfileColumn(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %7, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %8, align 8
  %22 = load i32, i32* @SQLITE_OK, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %198 [
    i32 0, label %24
    i32 1, label %31
    i32 2, label %38
    i32 3, label %46
    i32 4, label %57
    i32 5, label %63
    i32 6, label %192
  ]

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %30 = call i32 @sqlite3_result_text(i32* %25, i8* %28, i32 -1, i32 %29)
  br label %208

31:                                               ; preds = %3
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = ashr i32 %35, 16
  %37 = call i32 @sqlite3_result_int(i32* %32, i32 %36)
  br label %208

38:                                               ; preds = %3
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @sqlite3_result_int64(i32* %39, i32 %44)
  br label %208

46:                                               ; preds = %3
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @sqlite3_vtab_nochange(i32* %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32*, i32** %5, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sqlite3_result_int64(i32* %51, i32 %54)
  br label %56

56:                                               ; preds = %50, %46
  br label %208

57:                                               ; preds = %3
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @sqlite3_vtab_nochange(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %208

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %3, %62
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 4
  br i1 %65, label %76, label %66

66:                                               ; preds = %63
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 8
  br i1 %75, label %76, label %191

76:                                               ; preds = %71, %66, %63
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %10, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %163

85:                                               ; preds = %76
  store i8* null, i8** %13, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %12, align 8
  br label %135

98:                                               ; preds = %85
  %99 = load i32, i32* %10, align 4
  %100 = call i8* @sqlite3_malloc64(i32 %99)
  store i8* %100, i8** %13, align 8
  store i8* %100, i8** %12, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %104, i32* %9, align 4
  br label %134

105:                                              ; preds = %98
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  store i32* %108, i32** %14, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %119

111:                                              ; preds = %105
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = bitcast %struct.TYPE_8__* %115 to %struct.TYPE_10__*
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  store i32* %118, i32** %14, align 8
  br label %119

119:                                              ; preds = %111, %105
  %120 = load i32*, i32** %14, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = call i32 @zipfileReadData(i32* %120, i8* %121, i32 %122, i32 %127, i32* %132)
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %119, %103
  br label %135

135:                                              ; preds = %134, %92
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @SQLITE_OK, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %160

139:                                              ; preds = %135
  %140 = load i32, i32* %6, align 4
  %141 = icmp eq i32 %140, 5
  br i1 %141, label %142, label %153

142:                                              ; preds = %139
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = load i32*, i32** %5, align 8
  %149 = load i8*, i8** %12, align 8
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @zipfileInflate(i32* %148, i8* %149, i32 %150, i32 %151)
  br label %159

153:                                              ; preds = %142, %139
  %154 = load i32*, i32** %5, align 8
  %155 = load i8*, i8** %12, align 8
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %158 = call i32 @sqlite3_result_blob(i32* %154, i8* %155, i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %153, %147
  br label %160

160:                                              ; preds = %159, %135
  %161 = load i8*, i8** %13, align 8
  %162 = call i32 @sqlite3_free(i8* %161)
  br label %190

163:                                              ; preds = %76
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = ashr i32 %166, 16
  store i32 %167, i32* %15, align 4
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* @S_IFDIR, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %189, label %172

172:                                              ; preds = %163
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = sub nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %175, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp ne i32 %183, 47
  br i1 %184, label %185, label %189

185:                                              ; preds = %172
  %186 = load i32*, i32** %5, align 8
  %187 = load i32, i32* @SQLITE_STATIC, align 4
  %188 = call i32 @sqlite3_result_blob(i32* %186, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 %187)
  br label %189

189:                                              ; preds = %185, %172, %163
  br label %190

190:                                              ; preds = %189, %160
  br label %191

191:                                              ; preds = %190, %71
  br label %208

192:                                              ; preds = %3
  %193 = load i32*, i32** %5, align 8
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @sqlite3_result_int(i32* %193, i32 %196)
  br label %208

198:                                              ; preds = %3
  %199 = load i32, i32* %6, align 4
  %200 = icmp eq i32 %199, 7
  %201 = zext i1 %200 to i32
  %202 = call i32 @assert(i32 %201)
  %203 = load i32*, i32** %5, align 8
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @sqlite3_result_int64(i32* %203, i32 %206)
  br label %208

208:                                              ; preds = %198, %192, %191, %61, %56, %38, %31, %24
  %209 = load i32, i32* %9, align 4
  ret i32 %209
}

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

declare dso_local i32 @sqlite3_result_int64(i32*, i32) #1

declare dso_local i32 @sqlite3_vtab_nochange(i32*) #1

declare dso_local i8* @sqlite3_malloc64(i32) #1

declare dso_local i32 @zipfileReadData(i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @zipfileInflate(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_result_blob(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
