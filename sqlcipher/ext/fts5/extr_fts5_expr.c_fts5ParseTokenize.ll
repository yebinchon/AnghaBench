; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ParseTokenize.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ParseTokenize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i8*, %struct.TYPE_7__*, %struct.TYPE_7__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5_MAX_TOKEN_SIZE = common dso_local global i32 0, align 4
@FTS5_TOKEN_COLOCATED = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i32, i32)* @fts5ParseTokenize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5ParseTokenize(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_7__*, align 8
  %21 = alloca %struct.TYPE_7__*, align 8
  %22 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load i32, i32* @SQLITE_OK, align 4
  store i32 %23, i32* %14, align 4
  store i32 8, i32* %15, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %16, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %17, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @UNUSED_PARAM2(i32 %29, i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SQLITE_OK, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %6
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %7, align 4
  br label %190

41:                                               ; preds = %6
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @FTS5_MAX_TOKEN_SIZE, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @FTS5_MAX_TOKEN_SIZE, align 4
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %49 = icmp ne %struct.TYPE_7__* %48, null
  br i1 %49, label %50, label %116

50:                                               ; preds = %47
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %116

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @FTS5_TOKEN_COLOCATED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %116

60:                                               ; preds = %55
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 36, %62
  %64 = add i64 %63, 1
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %19, align 4
  %67 = call i64 @sqlite3_malloc64(i32 %66)
  %68 = inttoptr i64 %67 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %68, %struct.TYPE_7__** %18, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %70 = icmp eq %struct.TYPE_7__* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %72, i32* %14, align 4
  br label %115

73:                                               ; preds = %60
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %75 = load i32, i32* %19, align 4
  %76 = sext i32 %75 to i64
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memset(%struct.TYPE_7__* %74, i32 0, i32 %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %80 = bitcast %struct.TYPE_7__* %79 to i8*
  %81 = getelementptr inbounds i8, i8* %80, i64 32
  %82 = getelementptr inbounds i8, i8* %81, i64 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @memcpy(i8* %87, i8* %88, i32 %89)
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %103, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 3
  store %struct.TYPE_7__* %104, %struct.TYPE_7__** %114, align 8
  br label %115

115:                                              ; preds = %73, %71
  br label %185

116:                                              ; preds = %55, %50, %47
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %118 = icmp eq %struct.TYPE_7__* %117, null
  br i1 %118, label %125, label %119

119:                                              ; preds = %116
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = srem i32 %122, 8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %163

125:                                              ; preds = %119, %116
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %127 = icmp ne %struct.TYPE_7__* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  br label %133

132:                                              ; preds = %125
  br label %133

133:                                              ; preds = %132, %128
  %134 = phi i32 [ %131, %128 ], [ 0, %132 ]
  %135 = add nsw i32 8, %134
  store i32 %135, i32* %22, align 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %137 = load i32, i32* %22, align 4
  %138 = sext i32 %137 to i64
  %139 = mul i64 32, %138
  %140 = add i64 32, %139
  %141 = trunc i64 %140 to i32
  %142 = call i64 @sqlite3_realloc64(%struct.TYPE_7__* %136, i32 %141)
  %143 = inttoptr i64 %142 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %143, %struct.TYPE_7__** %21, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %145 = icmp eq %struct.TYPE_7__* %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %133
  %147 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %147, i32* %14, align 4
  br label %162

148:                                              ; preds = %133
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %150 = icmp eq %struct.TYPE_7__* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %153 = call i32 @memset(%struct.TYPE_7__* %152, i32 0, i32 32)
  br label %154

154:                                              ; preds = %151, %148
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  store %struct.TYPE_7__* %155, %struct.TYPE_7__** %17, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  store %struct.TYPE_7__* %155, %struct.TYPE_7__** %157, align 8
  %158 = load i32, i32* %22, align 4
  %159 = sub nsw i32 %158, 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %154, %146
  br label %163

163:                                              ; preds = %162, %119
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* @SQLITE_OK, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %184

167:                                              ; preds = %163
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 8
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i64 %175
  store %struct.TYPE_7__* %176, %struct.TYPE_7__** %20, align 8
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %178 = call i32 @memset(%struct.TYPE_7__* %177, i32 0, i32 32)
  %179 = load i8*, i8** %10, align 8
  %180 = load i32, i32* %11, align 4
  %181 = call i8* @sqlite3Fts5Strndup(i32* %14, i8* %179, i32 %180)
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  store i8* %181, i8** %183, align 8
  br label %184

184:                                              ; preds = %167, %163
  br label %185

185:                                              ; preds = %184, %115
  %186 = load i32, i32* %14, align 4
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  %189 = load i32, i32* %14, align 4
  store i32 %189, i32* %7, align 4
  br label %190

190:                                              ; preds = %185, %37
  %191 = load i32, i32* %7, align 4
  ret i32 %191
}

declare dso_local i32 @UNUSED_PARAM2(i32, i32) #1

declare dso_local i64 @sqlite3_malloc64(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @sqlite3_realloc64(%struct.TYPE_7__*, i32) #1

declare dso_local i8* @sqlite3Fts5Strndup(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
