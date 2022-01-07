; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3AddColumn.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3AddColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_23__, %struct.TYPE_26__*, %struct.TYPE_24__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_26__ = type { i32, i8*, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i8*, i32, i32, i32 }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_25__ = type { i64, i32 }

@SQLITE_LIMIT_COLUMN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"too many columns on %s\00", align 1
@IN_RENAME_OBJECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"duplicate column name: %s\00", align 1
@SQLITE_AFF_BLOB = common dso_local global i32 0, align 4
@COLFLAG_HASTYPE = common dso_local global i32 0, align 4
@COLFLAG_SORTERREF = common dso_local global i32 0, align 4
@sqlite3GlobalConfig = common dso_local global %struct.TYPE_29__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3AddColumn(%struct.TYPE_27__* %0, %struct.TYPE_25__* %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %6, align 8
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  store %struct.TYPE_24__* %16, %struct.TYPE_24__** %12, align 8
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  store %struct.TYPE_26__* %19, %struct.TYPE_26__** %7, align 8
  %20 = icmp eq %struct.TYPE_26__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %203

22:                                               ; preds = %3
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @SQLITE_LIMIT_COLUMN, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %26, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %22
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @sqlite3ErrorMsg(%struct.TYPE_27__* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %38)
  br label %203

40:                                               ; preds = %22
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %44, %47
  %49 = add i64 %48, 2
  %50 = call i8* @sqlite3DbMallocRaw(%struct.TYPE_24__* %41, i64 %49)
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %203

54:                                               ; preds = %40
  %55 = load i64, i64* @IN_RENAME_OBJECT, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %61 = call i32 @sqlite3RenameTokenMap(%struct.TYPE_27__* %58, i8* %59, %struct.TYPE_25__* %60)
  br label %62

62:                                               ; preds = %57, %54
  %63 = load i8*, i8** %9, align 8
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @memcpy(i8* %63, i32 %66, i64 %69)
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  store i8 0, i8* %75, align 1
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @sqlite3Dequote(i8* %76)
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %104, %62
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %78
  %85 = load i8*, i8** %9, align 8
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @sqlite3_stricmp(i8* %85, i8* %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %84
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 @sqlite3ErrorMsg(%struct.TYPE_27__* %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %98)
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @sqlite3DbFree(%struct.TYPE_24__* %100, i8* %101)
  br label %203

103:                                              ; preds = %84
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %78

107:                                              ; preds = %78
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, 7
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %136

113:                                              ; preds = %107
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %116, align 8
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 8
  %122 = sext i32 %121 to i64
  %123 = mul i64 %122, 24
  %124 = trunc i64 %123 to i32
  %125 = call %struct.TYPE_28__* @sqlite3DbRealloc(%struct.TYPE_24__* %114, %struct.TYPE_28__* %117, i32 %124)
  store %struct.TYPE_28__* %125, %struct.TYPE_28__** %13, align 8
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %127 = icmp eq %struct.TYPE_28__* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %113
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = call i32 @sqlite3DbFree(%struct.TYPE_24__* %129, i8* %130)
  br label %203

132:                                              ; preds = %113
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 2
  store %struct.TYPE_28__* %133, %struct.TYPE_28__** %135, align 8
  br label %136

136:                                              ; preds = %132, %107
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %138, align 8
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i64 %143
  store %struct.TYPE_28__* %144, %struct.TYPE_28__** %11, align 8
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %146 = call i32 @memset(%struct.TYPE_28__* %145, i32 0, i32 24)
  %147 = load i8*, i8** %9, align 8
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %152 = call i32 @sqlite3ColumnPropertiesFromName(%struct.TYPE_26__* %150, %struct.TYPE_28__* %151)
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %136
  %158 = load i32, i32* @SQLITE_AFF_BLOB, align 4
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 8
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 1
  store i32 1, i32* %162, align 8
  br label %195

163:                                              ; preds = %136
  %164 = load i8*, i8** %9, align 8
  %165 = load i8*, i8** %9, align 8
  %166 = call i32 @sqlite3Strlen30(i8* %165)
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %164, i64 %167
  %169 = getelementptr inbounds i8, i8* %168, i64 1
  store i8* %169, i8** %10, align 8
  %170 = load i8*, i8** %10, align 8
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @memcpy(i8* %170, i32 %173, i64 %176)
  %178 = load i8*, i8** %10, align 8
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds i8, i8* %178, i64 %181
  store i8 0, i8* %182, align 1
  %183 = load i8*, i8** %10, align 8
  %184 = call i32 @sqlite3Dequote(i8* %183)
  %185 = load i8*, i8** %10, align 8
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %187 = call i32 @sqlite3AffinityType(i8* %185, %struct.TYPE_28__* %186)
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 3
  store i32 %187, i32* %189, align 8
  %190 = load i32, i32* @COLFLAG_HASTYPE, align 4
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %163, %157
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 8
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 0
  store i64 0, i64* %202, align 8
  br label %203

203:                                              ; preds = %195, %128, %96, %53, %34, %21
  ret void
}

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_27__*, i8*, i8*) #1

declare dso_local i8* @sqlite3DbMallocRaw(%struct.TYPE_24__*, i64) #1

declare dso_local i32 @sqlite3RenameTokenMap(%struct.TYPE_27__*, i8*, %struct.TYPE_25__*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @sqlite3Dequote(i8*) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_24__*, i8*) #1

declare dso_local %struct.TYPE_28__* @sqlite3DbRealloc(%struct.TYPE_24__*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @sqlite3ColumnPropertiesFromName(%struct.TYPE_26__*, %struct.TYPE_28__*) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local i32 @sqlite3AffinityType(i8*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
