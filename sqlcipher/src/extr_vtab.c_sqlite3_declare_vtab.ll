; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vtab.c_sqlite3_declare_vtab.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vtab.c_sqlite3_declare_vtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_27__*, %struct.TYPE_30__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_32__*, i64, i64, i32 }
%struct.TYPE_32__ = type { i64, %struct.TYPE_30__* }
%struct.TYPE_31__ = type { i32, %struct.TYPE_30__*, i64, i32, %struct.TYPE_28__* }
%struct.TYPE_24__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_MISUSE = common dso_local global i32 0, align 4
@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4
@PARSE_MODE_DECLARE_VTAB = common dso_local global i32 0, align 4
@TF_WithoutRowid = common dso_local global i32 0, align 4
@TF_NoVisibleRowid = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PARSE_MODE_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_declare_vtab(%struct.TYPE_28__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_31__, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @SQLITE_OK, align 4
  store i32 %13, i32* %7, align 4
  store i8* null, i8** %9, align 8
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @sqlite3_mutex_enter(i32 %16)
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  store %struct.TYPE_29__* %20, %struct.TYPE_29__** %6, align 8
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %22 = icmp ne %struct.TYPE_29__* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23, %2
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %30 = load i32, i32* @SQLITE_MISUSE, align 4
  %31 = call i32 @sqlite3Error(%struct.TYPE_28__* %29, i32 %30)
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @sqlite3_mutex_leave(i32 %34)
  %36 = load i32, i32* @SQLITE_MISUSE_BKPT, align 4
  store i32 %36, i32* %3, align 4
  br label %214

37:                                               ; preds = %23
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %39, align 8
  store %struct.TYPE_30__* %40, %struct.TYPE_30__** %8, align 8
  %41 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %42 = call i32 @IsVirtual(%struct.TYPE_30__* %41)
  %43 = call i32 @assert(i32 %42)
  %44 = call i32 @memset(%struct.TYPE_31__* %10, i32 0, i32 40)
  %45 = load i32, i32* @PARSE_MODE_DECLARE_VTAB, align 4
  %46 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 3
  store i32 %45, i32* %46, align 8
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 4
  store %struct.TYPE_28__* %47, %struct.TYPE_28__** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load i32, i32* @SQLITE_OK, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @sqlite3RunParser(%struct.TYPE_31__* %10, i8* %51, i8** %9)
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %171

54:                                               ; preds = %37
  %55 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 1
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %55, align 8
  %57 = icmp ne %struct.TYPE_30__* %56, null
  br i1 %57, label %58, label %171

58:                                               ; preds = %54
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %171, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 1
  %65 = load %struct.TYPE_30__*, %struct.TYPE_30__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %171, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 1
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %70, align 8
  %72 = call i32 @IsVirtual(%struct.TYPE_30__* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %171, label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %168, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 1
  %81 = load %struct.TYPE_30__*, %struct.TYPE_30__** %80, align 8
  store %struct.TYPE_30__* %81, %struct.TYPE_30__** %11, align 8
  %82 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @TF_WithoutRowid, align 4
  %96 = load i32, i32* @TF_NoVisibleRowid, align 4
  %97 = or i32 %95, %96
  %98 = and i32 %94, %97
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 3
  store i64 0, i64* %104, align 8
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %105, i32 0, i32 2
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_32__*, %struct.TYPE_32__** %108, align 8
  %110 = icmp eq %struct.TYPE_32__* %109, null
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %114 = call i64 @HasRowid(%struct.TYPE_30__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %79
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %118 = call %struct.TYPE_24__* @sqlite3PrimaryKeyIndex(%struct.TYPE_30__* %117)
  %119 = icmp ne %struct.TYPE_24__* %118, null
  br label %120

120:                                              ; preds = %116, %79
  %121 = phi i1 [ true, %79 ], [ %119, %116 ]
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %125 = call i64 @HasRowid(%struct.TYPE_30__* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %146, label %127

127:                                              ; preds = %120
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %127
  %139 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %140 = call %struct.TYPE_24__* @sqlite3PrimaryKeyIndex(%struct.TYPE_30__* %139)
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 1
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %145, i32* %7, align 4
  br label %146

146:                                              ; preds = %144, %138, %127, %120
  %147 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_32__*, %struct.TYPE_32__** %148, align 8
  store %struct.TYPE_32__* %149, %struct.TYPE_32__** %12, align 8
  %150 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %151 = icmp ne %struct.TYPE_32__* %150, null
  br i1 %151, label %152, label %167

152:                                              ; preds = %146
  %153 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 1
  store %struct.TYPE_32__* %159, %struct.TYPE_32__** %161, align 8
  %162 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %162, i32 0, i32 1
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %163, align 8
  %164 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %165 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %165, i32 0, i32 1
  store %struct.TYPE_30__* %164, %struct.TYPE_30__** %166, align 8
  br label %167

167:                                              ; preds = %152, %146
  br label %168

168:                                              ; preds = %167, %74
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 0
  store i32 1, i32* %170, align 8
  br label %184

171:                                              ; preds = %69, %63, %58, %54, %37
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %173 = load i32, i32* @SQLITE_ERROR, align 4
  %174 = load i8*, i8** %9, align 8
  %175 = icmp ne i8* %174, null
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* null
  %178 = load i8*, i8** %9, align 8
  %179 = call i32 @sqlite3ErrorWithMsg(%struct.TYPE_28__* %172, i32 %173, i8* %177, i8* %178)
  %180 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %181 = load i8*, i8** %9, align 8
  %182 = call i32 @sqlite3DbFree(%struct.TYPE_28__* %180, i8* %181)
  %183 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %183, i32* %7, align 4
  br label %184

184:                                              ; preds = %171, %168
  %185 = load i32, i32* @PARSE_MODE_NORMAL, align 4
  %186 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 3
  store i32 %185, i32* %186, align 8
  %187 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @sqlite3VdbeFinalize(i64 %192)
  br label %194

194:                                              ; preds = %190, %184
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 1
  %197 = load %struct.TYPE_30__*, %struct.TYPE_30__** %196, align 8
  %198 = call i32 @sqlite3DeleteTable(%struct.TYPE_28__* %195, %struct.TYPE_30__* %197)
  %199 = call i32 @sqlite3ParserReset(%struct.TYPE_31__* %10)
  %200 = load i32, i32* %7, align 4
  %201 = and i32 %200, 255
  %202 = load i32, i32* %7, align 4
  %203 = icmp eq i32 %201, %202
  %204 = zext i1 %203 to i32
  %205 = call i32 @assert(i32 %204)
  %206 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %207 = load i32, i32* %7, align 4
  %208 = call i32 @sqlite3ApiExit(%struct.TYPE_28__* %206, i32 %207)
  store i32 %208, i32* %7, align 4
  %209 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @sqlite3_mutex_leave(i32 %211)
  %213 = load i32, i32* %7, align 4
  store i32 %213, i32* %3, align 4
  br label %214

214:                                              ; preds = %194, %28
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3Error(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IsVirtual(%struct.TYPE_30__*) #1

declare dso_local i32 @memset(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @sqlite3RunParser(%struct.TYPE_31__*, i8*, i8**) #1

declare dso_local i64 @HasRowid(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_24__* @sqlite3PrimaryKeyIndex(%struct.TYPE_30__*) #1

declare dso_local i32 @sqlite3ErrorWithMsg(%struct.TYPE_28__*, i32, i8*, i8*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_28__*, i8*) #1

declare dso_local i32 @sqlite3VdbeFinalize(i64) #1

declare dso_local i32 @sqlite3DeleteTable(%struct.TYPE_28__*, %struct.TYPE_30__*) #1

declare dso_local i32 @sqlite3ParserReset(%struct.TYPE_31__*) #1

declare dso_local i32 @sqlite3ApiExit(%struct.TYPE_28__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
