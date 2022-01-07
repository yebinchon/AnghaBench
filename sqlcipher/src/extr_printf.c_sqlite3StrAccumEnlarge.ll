; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_printf.c_sqlite3StrAccumEnlarge.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_printf.c_sqlite3StrAccumEnlarge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64, i8*, i32, i64 }

@SQLITE_TOOBIG = common dso_local global i64 0, align 8
@SQLITE_NOMEM = common dso_local global i64 0, align 8
@SQLITE_PRINTF_MALLOCED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @sqlite3StrAccumEnlarge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite3StrAccumEnlarge(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SQLITE_TOOBIG, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @testcase(i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SQLITE_NOMEM, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @testcase(i32 %38)
  store i32 0, i32* %3, align 4
  br label %192

40:                                               ; preds = %2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = load i64, i64* @SQLITE_TOOBIG, align 8
  %48 = call i32 @setStrAccumError(%struct.TYPE_6__* %46, i64 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  %56 = sub nsw i64 %55, 1
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %3, align 4
  br label %192

58:                                               ; preds = %40
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = call i64 @isMalloced(%struct.TYPE_6__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  %65 = load i8*, i8** %64, align 8
  br label %67

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi i8* [ %65, %62 ], [ null, %66 ]
  store i8* %68, i8** %7, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %8, align 8
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %8, align 8
  %76 = add nsw i64 %75, %74
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp sle i64 %81, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %67
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = add nsw i64 %90, %89
  store i64 %91, i64* %8, align 8
  br label %92

92:                                               ; preds = %86, %67
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %93, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %100 = call i32 @sqlite3_str_reset(%struct.TYPE_6__* %99)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %102 = load i64, i64* @SQLITE_TOOBIG, align 8
  %103 = call i32 @setStrAccumError(%struct.TYPE_6__* %101, i64 %102)
  store i32 0, i32* %3, align 4
  br label %192

104:                                              ; preds = %92
  %105 = load i64, i64* %8, align 8
  %106 = trunc i64 %105 to i32
  %107 = sext i32 %106 to i64
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %104
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 6
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i8* @sqlite3DbRealloc(i64 %118, i8* %119, i32 %123)
  store i8* %124, i8** %6, align 8
  br label %132

125:                                              ; preds = %110
  %126 = load i8*, i8** %7, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = call i8* @sqlite3_realloc64(i8* %126, i32 %130)
  store i8* %131, i8** %6, align 8
  br label %132

132:                                              ; preds = %125, %115
  %133 = load i8*, i8** %6, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %183

135:                                              ; preds = %132
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 4
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %145, label %140

140:                                              ; preds = %135
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br label %145

145:                                              ; preds = %140, %135
  %146 = phi i1 [ true, %135 ], [ %144, %140 ]
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %150 = call i64 @isMalloced(%struct.TYPE_6__* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %166, label %152

152:                                              ; preds = %145
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp sgt i64 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %152
  %158 = load i8*, i8** %6, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 4
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @memcpy(i8* %158, i8* %161, i64 %164)
  br label %166

166:                                              ; preds = %157, %152, %145
  %167 = load i8*, i8** %6, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 4
  store i8* %167, i8** %169, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 6
  %172 = load i64, i64* %171, align 8
  %173 = load i8*, i8** %6, align 8
  %174 = call i32 @sqlite3DbMallocSize(i64 %172, i8* %173)
  %175 = sext i32 %174 to i64
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  store i64 %175, i64* %177, align 8
  %178 = load i32, i32* @SQLITE_PRINTF_MALLOCED, align 4
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  br label %189

183:                                              ; preds = %132
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %185 = call i32 @sqlite3_str_reset(%struct.TYPE_6__* %184)
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %187 = load i64, i64* @SQLITE_NOMEM, align 8
  %188 = call i32 @setStrAccumError(%struct.TYPE_6__* %186, i64 %187)
  store i32 0, i32* %3, align 4
  br label %192

189:                                              ; preds = %166
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %5, align 4
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %190, %183, %98, %45, %25
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @setStrAccumError(%struct.TYPE_6__*, i64) #1

declare dso_local i64 @isMalloced(%struct.TYPE_6__*) #1

declare dso_local i32 @sqlite3_str_reset(%struct.TYPE_6__*) #1

declare dso_local i8* @sqlite3DbRealloc(i64, i8*, i32) #1

declare dso_local i8* @sqlite3_realloc64(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @sqlite3DbMallocSize(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
