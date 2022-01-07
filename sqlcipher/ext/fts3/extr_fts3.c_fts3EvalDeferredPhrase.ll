; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3EvalDeferredPhrase.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3EvalDeferredPhrase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i8*, i32, i32 }
%struct.TYPE_8__ = type { i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*)* @fts3EvalDeferredPhrase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3EvalDeferredPhrase(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %113, %2
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %116

36:                                               ; preds = %30
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 %41
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %10, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %11, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %112

48:                                               ; preds = %36
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @sqlite3Fts3DeferredTokenList(i32* %49, i8** %12, i32* %13)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @SQLITE_OK, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %3, align 4
  br label %215

56:                                               ; preds = %48
  %57 = load i8*, i8** %12, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @sqlite3_free(i8* %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i8* null, i8** %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  store i32 0, i32* %67, align 8
  %68 = load i32, i32* @SQLITE_OK, align 4
  store i32 %68, i32* %3, align 4
  br label %215

69:                                               ; preds = %56
  %70 = load i8*, i8** %7, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i8*, i8** %12, align 8
  store i8* %73, i8** %7, align 8
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* %8, align 4
  br label %109

75:                                               ; preds = %69
  %76 = load i8*, i8** %12, align 8
  store i8* %76, i8** %15, align 8
  %77 = load i8*, i8** %7, align 8
  store i8* %77, i8** %16, align 8
  %78 = load i8*, i8** %15, align 8
  store i8* %78, i8** %17, align 8
  %79 = load i32, i32* %9, align 4
  %80 = icmp sge i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %9, align 4
  %85 = sub nsw i32 %83, %84
  %86 = call i64 @fts3PoslistPhraseMerge(i8** %15, i32 %85, i32 0, i32 1, i8** %16, i8** %17)
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @sqlite3_free(i8* %87)
  %89 = load i8*, i8** %12, align 8
  store i8* %89, i8** %7, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %75
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @sqlite3_free(i8* %99)
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  store i8* null, i8** %103, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  store i32 0, i32* %106, align 8
  %107 = load i32, i32* @SQLITE_OK, align 4
  store i32 %107, i32* %3, align 4
  br label %215

108:                                              ; preds = %75
  br label %109

109:                                              ; preds = %108, %72
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %110, %36
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %30

116:                                              ; preds = %30
  %117 = load i32, i32* %9, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %213

119:                                              ; preds = %116
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* %18, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %143

125:                                              ; preds = %119
  %126 = load i8*, i8** %7, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  store i8* %126, i8** %129, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  store i32 %130, i32* %133, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 3
  store i32 %136, i32* %139, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  store i32 1, i32* %142, align 8
  br label %212

143:                                              ; preds = %119
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp sgt i32 %144, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %143
  %148 = load i8*, i8** %7, align 8
  store i8* %148, i8** %20, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** %21, align 8
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %9, align 4
  %155 = sub nsw i32 %153, %154
  store i32 %155, i32* %19, align 4
  br label %165

156:                                              ; preds = %143
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  store i8* %160, i8** %20, align 8
  %161 = load i8*, i8** %7, align 8
  store i8* %161, i8** %21, align 8
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %18, align 4
  %164 = sub nsw i32 %162, %163
  store i32 %164, i32* %19, align 4
  br label %165

165:                                              ; preds = %156, %147
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 8
  %168 = call i64 @sqlite3_malloc(i32 %167)
  %169 = inttoptr i64 %168 to i8*
  store i8* %169, i8** %22, align 8
  %170 = load i8*, i8** %22, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %176, label %172

172:                                              ; preds = %165
  %173 = load i8*, i8** %7, align 8
  %174 = call i32 @sqlite3_free(i8* %173)
  %175 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %175, i32* %3, align 4
  br label %215

176:                                              ; preds = %165
  %177 = load i8*, i8** %22, align 8
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  store i8* %177, i8** %180, align 8
  %181 = load i32, i32* %19, align 4
  %182 = call i64 @fts3PoslistPhraseMerge(i8** %22, i32 %181, i32 0, i32 1, i8** %20, i8** %21)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %200

184:                                              ; preds = %176
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  store i32 1, i32* %187, align 8
  %188 = load i8*, i8** %22, align 8
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 1
  %192 = load i8*, i8** %191, align 8
  %193 = ptrtoint i8* %188 to i64
  %194 = ptrtoint i8* %192 to i64
  %195 = sub i64 %193, %194
  %196 = trunc i64 %195 to i32
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 2
  store i32 %196, i32* %199, align 8
  br label %209

200:                                              ; preds = %176
  %201 = load i8*, i8** %22, align 8
  %202 = call i32 @sqlite3_free(i8* %201)
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  store i8* null, i8** %205, align 8
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 2
  store i32 0, i32* %208, align 8
  br label %209

209:                                              ; preds = %200, %184
  %210 = load i8*, i8** %7, align 8
  %211 = call i32 @sqlite3_free(i8* %210)
  br label %212

212:                                              ; preds = %209, %125
  br label %213

213:                                              ; preds = %212, %116
  %214 = load i32, i32* @SQLITE_OK, align 4
  store i32 %214, i32* %3, align 4
  br label %215

215:                                              ; preds = %213, %172, %98, %59, %54
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3Fts3DeferredTokenList(i32*, i8**, i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i64 @fts3PoslistPhraseMerge(i8**, i32, i32, i32, i8**, i8**) #1

declare dso_local i64 @sqlite3_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
