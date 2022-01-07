; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3DropIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3DropIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64, i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_27__*, i64 }
%struct.TYPE_27__ = type { i8* }
%struct.TYPE_30__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_32__ = type { i64, i8*, i32, %struct.TYPE_29__*, i32 }
%struct.TYPE_29__ = type { i32 }

@SQLITE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"no such index: %S\00", align 1
@SQLITE_IDXTYPE_APPDEF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [73 x i8] c"index associated with UNIQUE or PRIMARY KEY constraint cannot be dropped\00", align 1
@SQLITE_DROP_INDEX = common dso_local global i32 0, align 4
@SQLITE_DELETE = common dso_local global i32 0, align 4
@OMIT_TEMPDB = common dso_local global i32 0, align 4
@SQLITE_DROP_TEMP_INDEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"DELETE FROM %Q.%s WHERE name=%Q AND type='index'\00", align 1
@MASTER_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"idx\00", align 1
@OP_DropIndex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3DropIndex(%struct.TYPE_31__* %0, %struct.TYPE_30__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  store %struct.TYPE_28__* %17, %struct.TYPE_28__** %9, align 8
  %18 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %180

29:                                               ; preds = %3
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 1
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i64, i64* @SQLITE_OK, align 8
  %37 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %38 = call i64 @sqlite3ReadSchema(%struct.TYPE_31__* %37)
  %39 = icmp ne i64 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %180

41:                                               ; preds = %29
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.TYPE_32__* @sqlite3FindIndex(%struct.TYPE_28__* %42, i32 %48, i32 %54)
  store %struct.TYPE_32__* %55, %struct.TYPE_32__** %7, align 8
  %56 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %57 = icmp eq %struct.TYPE_32__* %56, null
  br i1 %57, label %58, label %77

58:                                               ; preds = %41
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %64 = call i32 (%struct.TYPE_31__*, i8*, %struct.TYPE_30__*, ...) @sqlite3ErrorMsg(%struct.TYPE_31__* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_30__* %63, i32 0)
  br label %74

65:                                               ; preds = %58
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @sqlite3CodeVerifyNamedSchema(%struct.TYPE_31__* %66, i32 %72)
  br label %74

74:                                               ; preds = %65, %61
  %75 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %75, i32 0, i32 1
  store i32 1, i32* %76, align 8
  br label %180

77:                                               ; preds = %41
  %78 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SQLITE_IDXTYPE_APPDEF, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %85 = call i32 (%struct.TYPE_31__*, i8*, %struct.TYPE_30__*, ...) @sqlite3ErrorMsg(%struct.TYPE_31__* %84, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_30__* null)
  br label %180

86:                                               ; preds = %77
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %88 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @sqlite3SchemaToIndex(%struct.TYPE_28__* %87, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* @SQLITE_DROP_INDEX, align 4
  store i32 %92, i32* %11, align 4
  %93 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %94, align 8
  store %struct.TYPE_29__* %95, %struct.TYPE_29__** %12, align 8
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %13, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i8* @SCHEMA_TABLE(i32 %104)
  store i8* %105, i8** %14, align 8
  %106 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %107 = load i32, i32* @SQLITE_DELETE, align 4
  %108 = load i8*, i8** %14, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = call i64 @sqlite3AuthCheck(%struct.TYPE_31__* %106, i32 %107, i8* %108, i32 0, i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %86
  br label %180

113:                                              ; preds = %86
  %114 = load i32, i32* @OMIT_TEMPDB, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i32, i32* @SQLITE_DROP_TEMP_INDEX, align 4
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %119, %116, %113
  %122 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i8*, i8** %13, align 8
  %131 = call i64 @sqlite3AuthCheck(%struct.TYPE_31__* %122, i32 %123, i8* %126, i32 %129, i8* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %121
  br label %180

134:                                              ; preds = %121
  %135 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %136 = call i32* @sqlite3GetVdbe(%struct.TYPE_31__* %135)
  store i32* %136, i32** %8, align 8
  %137 = load i32*, i32** %8, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %179

139:                                              ; preds = %134
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @sqlite3BeginWriteOperation(%struct.TYPE_31__* %140, i32 1, i32 %141)
  %143 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = load i32, i32* @MASTER_NAME, align 4
  %153 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @sqlite3NestedParse(%struct.TYPE_31__* %143, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %151, i32 %152, i8* %155)
  %157 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @sqlite3ClearStatTables(%struct.TYPE_31__* %157, i32 %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %161)
  %163 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @sqlite3ChangeCookie(%struct.TYPE_31__* %163, i32 %164)
  %166 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %167 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @destroyRootPage(%struct.TYPE_31__* %166, i32 %169, i32 %170)
  %172 = load i32*, i32** %8, align 8
  %173 = load i32, i32* @OP_DropIndex, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @sqlite3VdbeAddOp4(i32* %172, i32 %173, i32 %174, i32 0, i32 0, i8* %177, i32 0)
  br label %179

179:                                              ; preds = %139, %134
  br label %180

180:                                              ; preds = %179, %133, %112, %83, %74, %40, %28
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %182 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %183 = call i32 @sqlite3SrcListDelete(%struct.TYPE_28__* %181, %struct.TYPE_30__* %182)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3ReadSchema(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_32__* @sqlite3FindIndex(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_31__*, i8*, %struct.TYPE_30__*, ...) #1

declare dso_local i32 @sqlite3CodeVerifyNamedSchema(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @sqlite3SchemaToIndex(%struct.TYPE_28__*, i32) #1

declare dso_local i8* @SCHEMA_TABLE(i32) #1

declare dso_local i64 @sqlite3AuthCheck(%struct.TYPE_31__*, i32, i8*, i32, i8*) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_31__*) #1

declare dso_local i32 @sqlite3BeginWriteOperation(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @sqlite3NestedParse(%struct.TYPE_31__*, i8*, i8*, i32, i8*) #1

declare dso_local i32 @sqlite3ClearStatTables(%struct.TYPE_31__*, i32, i8*, i8*) #1

declare dso_local i32 @sqlite3ChangeCookie(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @destroyRootPage(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3SrcListDelete(%struct.TYPE_28__*, %struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
