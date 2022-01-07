; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_spellfix1Column.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_spellfix1Column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i8*, i32, i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32, i8* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @spellfix1Column to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spellfix1Column(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %8, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp sle i32 %22, 136
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @sqlite3_column_value(i64 %28, i32 %29)
  %31 = call i32 @sqlite3_result_value(i32* %25, i32 %30)
  br label %35

32:                                               ; preds = %21
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @sqlite3_result_null(i32* %33)
  br label %35

35:                                               ; preds = %32, %24
  %36 = load i32, i32* @SQLITE_OK, align 4
  store i32 %36, i32* %4, align 4
  br label %208

37:                                               ; preds = %3
  %38 = load i32, i32* %7, align 4
  switch i32 %38, label %203 [
    i32 128, label %39
    i32 133, label %52
    i32 137, label %64
    i32 136, label %76
    i32 131, label %82
    i32 135, label %94
    i32 134, label %172
    i32 129, label %185
    i32 132, label %191
    i32 130, label %197
  ]

39:                                               ; preds = %37
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 6
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* @SQLITE_STATIC, align 4
  %51 = call i32 @sqlite3_result_text(i32* %40, i8* %49, i32 -1, i32 %50)
  br label %206

52:                                               ; preds = %37
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 6
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @sqlite3_result_int(i32* %53, i32 %62)
  br label %206

64:                                               ; preds = %37
  %65 = load i32*, i32** %6, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 6
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @sqlite3_result_int(i32* %65, i32 %74)
  br label %206

76:                                               ; preds = %37
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @sqlite3_result_int(i32* %77, i32 %80)
  br label %206

82:                                               ; preds = %37
  %83 = load i32*, i32** %6, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 6
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @sqlite3_result_int(i32* %83, i32 %92)
  br label %206

94:                                               ; preds = %37
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 6
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %168

106:                                              ; preds = %94
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = call i64 @strlen(i8* %109)
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %10, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 6
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  store i8* %120, i8** %11, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = call i64 @strlen(i8* %121)
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %163

126:                                              ; preds = %106
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 42
  br i1 %136, label %137, label %163

137:                                              ; preds = %126
  %138 = load i8*, i8** %11, align 8
  %139 = load i32, i32* %12, align 4
  %140 = call i64 @transliterate(i8* %138, i32 %139)
  %141 = inttoptr i64 %140 to i8*
  store i8* %141, i8** %13, align 8
  %142 = load i8*, i8** %13, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %137
  %145 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %145, i32* %4, align 4
  br label %208

146:                                              ; preds = %137
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load i8*, i8** %148, align 8
  %150 = load i8*, i8** %13, align 8
  %151 = call i32 @editdist1(i8* %149, i8* %150, i32* %9)
  store i32 %151, i32* %14, align 4
  %152 = load i8*, i8** %13, align 8
  %153 = call i32 @sqlite3_free(i8* %152)
  %154 = load i32, i32* %14, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %146
  %157 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %157, i32* %4, align 4
  br label %208

158:                                              ; preds = %146
  %159 = load i8*, i8** %11, align 8
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @translen_to_charlen(i8* %159, i32 %160, i32 %161)
  store i32 %162, i32* %9, align 4
  br label %167

163:                                              ; preds = %126, %106
  %164 = load i8*, i8** %11, align 8
  %165 = load i32, i32* %12, align 4
  %166 = call i32 @utf8Charlen(i8* %164, i32 %165)
  store i32 %166, i32* %9, align 4
  br label %167

167:                                              ; preds = %163, %158
  br label %168

168:                                              ; preds = %167, %94
  %169 = load i32*, i32** %6, align 8
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @sqlite3_result_int(i32* %169, i32 %170)
  br label %206

172:                                              ; preds = %37
  %173 = load i32*, i32** %6, align 8
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 6
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %175, align 8
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 5
  %182 = load i8*, i8** %181, align 8
  %183 = load i32, i32* @SQLITE_STATIC, align 4
  %184 = call i32 @sqlite3_result_text(i32* %173, i8* %182, i32 -1, i32 %183)
  br label %206

185:                                              ; preds = %37
  %186 = load i32*, i32** %6, align 8
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @sqlite3_result_int(i32* %186, i32 %189)
  br label %206

191:                                              ; preds = %37
  %192 = load i32*, i32** %6, align 8
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @sqlite3_result_int(i32* %192, i32 %195)
  br label %206

197:                                              ; preds = %37
  %198 = load i32*, i32** %6, align 8
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @sqlite3_result_int(i32* %198, i32 %201)
  br label %206

203:                                              ; preds = %37
  %204 = load i32*, i32** %6, align 8
  %205 = call i32 @sqlite3_result_null(i32* %204)
  br label %206

206:                                              ; preds = %203, %197, %191, %185, %172, %168, %82, %76, %64, %52, %39
  %207 = load i32, i32* @SQLITE_OK, align 4
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %206, %156, %144, %35
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

declare dso_local i32 @sqlite3_result_value(i32*, i32) #1

declare dso_local i32 @sqlite3_column_value(i64, i32) #1

declare dso_local i32 @sqlite3_result_null(i32*) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @transliterate(i8*, i32) #1

declare dso_local i32 @editdist1(i8*, i8*, i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @translen_to_charlen(i8*, i32, i32) #1

declare dso_local i32 @utf8Charlen(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
