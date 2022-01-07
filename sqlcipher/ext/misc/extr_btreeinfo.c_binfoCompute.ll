; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_btreeinfo.c_binfoCompute.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_btreeinfo.c_binfoCompute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"SELECT data FROM sqlite_dbpage('main') WHERE pgno=?1\00", align 1
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_CORRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_3__*)* @binfoCompute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binfoCompute(i32* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32* null, i32** %11, align 8
  %16 = load i32, i32* @SQLITE_OK, align 4
  store i32 %16, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @sqlite3_prepare_v2(i32* %17, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 -1, i32** %11, i32 0)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %4, align 4
  br label %157

23:                                               ; preds = %3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %134
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @sqlite3_bind_int(i32* %27, i32 1, i32 %28)
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @sqlite3_step(i32* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @SQLITE_ROW, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %36, i32* %12, align 4
  br label %141

37:                                               ; preds = %26
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @sqlite3_column_bytes(i32* %38, i32 0)
  store i32 %39, i32* %13, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = call i64 @sqlite3_column_blob(i32* %42, i32 0)
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %48, i32* %12, align 4
  br label %141

49:                                               ; preds = %37
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 100
  store i8* %54, i8** %10, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sub nsw i32 %55, 100
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %52, %49
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp ne i32 %61, 2
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp ne i32 %67, 10
  br label %69

69:                                               ; preds = %63, %57
  %70 = phi i1 [ false, %57 ], [ %68, %63 ]
  %71 = zext i1 %70 to i32
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 3
  %76 = call i32 @get_uint16(i8* %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  %79 = load i32, i32* %8, align 4
  %80 = mul nsw i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %84, 10
  br i1 %85, label %92, label %86

86:                                               ; preds = %69
  %87 = load i8*, i8** %10, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %90, 13
  br i1 %91, label %92, label %93

92:                                               ; preds = %86, %69
  br label %141

93:                                               ; preds = %86
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  %96 = load i32, i32* %9, align 4
  %97 = mul nsw i32 %96, %95
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp sle i32 %98, 1
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 8
  %103 = call i32 @get_uint32(i8* %102)
  store i32 %103, i32* %6, align 4
  br label %134

104:                                              ; preds = %93
  %105 = load i8*, i8** %10, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 12
  %107 = load i32, i32* %14, align 4
  %108 = sdiv i32 %107, 2
  %109 = mul nsw i32 2, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %106, i64 %110
  %112 = call i32 @get_uint16(i8* %111)
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %118

115:                                              ; preds = %104
  %116 = load i32, i32* %15, align 4
  %117 = sub nsw i32 %116, 100
  store i32 %117, i32* %15, align 4
  br label %118

118:                                              ; preds = %115, %104
  %119 = load i32, i32* %15, align 4
  %120 = icmp sle i32 %119, 12
  br i1 %120, label %126, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %13, align 4
  %124 = sub nsw i32 %123, 4
  %125 = icmp sge i32 %122, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %121, %118
  %127 = load i32, i32* @SQLITE_CORRUPT, align 4
  store i32 %127, i32* %12, align 4
  br label %141

128:                                              ; preds = %121
  %129 = load i8*, i8** %10, align 8
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = call i32 @get_uint32(i8* %132)
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %128, %100
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  %139 = load i32*, i32** %11, align 8
  %140 = call i32 @sqlite3_reset(i32* %139)
  br label %26

141:                                              ; preds = %126, %92, %47, %35
  %142 = load i32*, i32** %11, align 8
  %143 = call i32 @sqlite3_finalize(i32* %142)
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @SQLITE_ROW, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %141
  %154 = load i32, i32* @SQLITE_OK, align 4
  store i32 %154, i32* %12, align 4
  br label %155

155:                                              ; preds = %153, %141
  %156 = load i32, i32* %12, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %155, %21
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_bind_int(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i64 @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @get_uint16(i8*) #1

declare dso_local i32 @get_uint32(i8*) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
