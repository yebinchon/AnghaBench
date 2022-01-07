; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_unicode.c_unicodeNext.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_unicode.c_unicodeNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i64, i64, i8*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@SQLITE_DONE = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32*, i32*, i32*, i32*)* @unicodeNext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unicodeNext(i32* %0, i8** %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = bitcast i32* %24 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %14, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %15, align 8
  store i32 0, i32* %16, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  store i8* %37, i8** %18, align 8
  %38 = load i8*, i8** %18, align 8
  store i8* %38, i8** %19, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  store i8* %45, i8** %21, align 8
  br label %46

46:                                               ; preds = %60, %6
  %47 = load i8*, i8** %18, align 8
  %48 = load i8*, i8** %21, align 8
  %49 = icmp ult i8* %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i8*, i8** %18, align 8
  %52 = load i8*, i8** %21, align 8
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @READ_UTF8(i8* %51, i8* %52, i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %56 = load i32, i32* %16, align 4
  %57 = call i64 @unicodeIsAlnum(%struct.TYPE_6__* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %62

60:                                               ; preds = %50
  %61 = load i8*, i8** %18, align 8
  store i8* %61, i8** %19, align 8
  br label %46

62:                                               ; preds = %59, %46
  %63 = load i8*, i8** %19, align 8
  %64 = load i8*, i8** %21, align 8
  %65 = icmp uge i8* %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @SQLITE_DONE, align 4
  store i32 %67, i32* %7, align 4
  br label %199

68:                                               ; preds = %62
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %17, align 8
  br label %72

72:                                               ; preds = %148, %68
  %73 = load i8*, i8** %17, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  %77 = ptrtoint i8* %73 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %82, 4
  %84 = sext i32 %83 to i64
  %85 = icmp sge i64 %79, %84
  br i1 %85, label %86, label %116

86:                                               ; preds = %72
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 64
  %94 = call i8* @sqlite3_realloc64(i8* %89, i32 %93)
  store i8* %94, i8** %23, align 8
  %95 = load i8*, i8** %23, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %86
  %98 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %98, i32* %7, align 4
  br label %199

99:                                               ; preds = %86
  %100 = load i8*, i8** %23, align 8
  %101 = load i8*, i8** %17, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load i8*, i8** %103, align 8
  %105 = ptrtoint i8* %101 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = getelementptr inbounds i8, i8* %100, i64 %107
  store i8* %108, i8** %17, align 8
  %109 = load i8*, i8** %23, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  store i8* %109, i8** %111, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 64
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %99, %72
  %117 = load i8*, i8** %18, align 8
  store i8* %117, i8** %20, align 8
  %118 = load i32, i32* %16, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @sqlite3FtsUnicodeFold(i32 %118, i32 %121)
  store i32 %122, i32* %22, align 4
  %123 = load i32, i32* %22, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %116
  %126 = load i8*, i8** %17, align 8
  %127 = load i32, i32* %22, align 4
  %128 = call i32 @WRITE_UTF8(i8* %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %116
  %130 = load i8*, i8** %18, align 8
  %131 = load i8*, i8** %21, align 8
  %132 = icmp uge i8* %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  br label %150

134:                                              ; preds = %129
  %135 = load i8*, i8** %18, align 8
  %136 = load i8*, i8** %21, align 8
  %137 = load i32, i32* %16, align 4
  %138 = call i32 @READ_UTF8(i8* %135, i8* %136, i32 %137)
  br label %139

139:                                              ; preds = %134
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %141 = load i32, i32* %16, align 4
  %142 = call i64 @unicodeIsAlnum(%struct.TYPE_6__* %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* %16, align 4
  %146 = call i64 @sqlite3FtsUnicodeIsdiacritic(i32 %145)
  %147 = icmp ne i64 %146, 0
  br label %148

148:                                              ; preds = %144, %139
  %149 = phi i1 [ true, %139 ], [ %147, %144 ]
  br i1 %149, label %72, label %150

150:                                              ; preds = %148, %133
  %151 = load i8*, i8** %18, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = ptrtoint i8* %151 to i64
  %156 = ptrtoint i8* %154 to i64
  %157 = sub i64 %155, %156
  %158 = trunc i64 %157 to i32
  %159 = sext i32 %158 to i64
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  store i64 %159, i64* %161, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 3
  %164 = load i8*, i8** %163, align 8
  %165 = load i8**, i8*** %9, align 8
  store i8* %164, i8** %165, align 8
  %166 = load i8*, i8** %17, align 8
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 3
  %169 = load i8*, i8** %168, align 8
  %170 = ptrtoint i8* %166 to i64
  %171 = ptrtoint i8* %169 to i64
  %172 = sub i64 %170, %171
  %173 = trunc i64 %172 to i32
  %174 = load i32*, i32** %10, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i8*, i8** %19, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = ptrtoint i8* %175 to i64
  %180 = ptrtoint i8* %178 to i64
  %181 = sub i64 %179, %180
  %182 = trunc i64 %181 to i32
  %183 = load i32*, i32** %11, align 8
  store i32 %182, i32* %183, align 4
  %184 = load i8*, i8** %20, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = ptrtoint i8* %184 to i64
  %189 = ptrtoint i8* %187 to i64
  %190 = sub i64 %188, %189
  %191 = trunc i64 %190 to i32
  %192 = load i32*, i32** %12, align 8
  store i32 %191, i32* %192, align 4
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 4
  %197 = load i32*, i32** %13, align 8
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* @SQLITE_OK, align 4
  store i32 %198, i32* %7, align 4
  br label %199

199:                                              ; preds = %150, %97, %66
  %200 = load i32, i32* %7, align 4
  ret i32 %200
}

declare dso_local i32 @READ_UTF8(i8*, i8*, i32) #1

declare dso_local i64 @unicodeIsAlnum(%struct.TYPE_6__*, i32) #1

declare dso_local i8* @sqlite3_realloc64(i8*, i32) #1

declare dso_local i32 @sqlite3FtsUnicodeFold(i32, i32) #1

declare dso_local i32 @WRITE_UTF8(i8*, i32) #1

declare dso_local i64 @sqlite3FtsUnicodeIsdiacritic(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
