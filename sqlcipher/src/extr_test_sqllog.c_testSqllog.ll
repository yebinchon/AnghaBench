; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_sqllog.c_testSqllog.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_sqllog.c_testSqllog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32*, %struct.SLConn*, i32 }
%struct.SLConn = type { i64, i32*, i64 }

@SQLITE_MUTEX_STATIC_MASTER = common dso_local global i32 0, align 4
@sqllogglobal = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SQLITE_MUTEX_RECURSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"main\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i8*, i32)* @testSqllog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testSqllog(i8* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.SLConn*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.SLConn* null, %struct.SLConn** %9, align 8
  %13 = load i32, i32* @SQLITE_MUTEX_STATIC_MASTER, align 4
  %14 = call i8* @sqlite3_mutex_alloc(i32 %13)
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 2
  br label %24

24:                                               ; preds = %21, %18, %4
  %25 = phi i1 [ true, %18 ], [ true, %4 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 2
  %30 = zext i1 %29 to i32
  %31 = load i8*, i8** %7, align 8
  %32 = icmp eq i8* %31, null
  %33 = zext i1 %32 to i32
  %34 = icmp eq i32 %30, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %92

39:                                               ; preds = %24
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @sqlite3_mutex_enter(i32* %40)
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 2), align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @SQLITE_MUTEX_RECURSIVE, align 4
  %46 = call i8* @sqlite3_mutex_alloc(i32 %45)
  %47 = bitcast i8* %46 to i32*
  store i32* %47, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 2), align 8
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @sqlite3_mutex_leave(i32* %49)
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 2), align 8
  %52 = call i32 @sqlite3_mutex_enter(i32* %51)
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 0), align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %89

55:                                               ; preds = %48
  %56 = load i32*, i32** %6, align 8
  %57 = call i64 @sqllogTraceDb(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %89

59:                                               ; preds = %55
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @sqlite3_mutex_enter(i32* %60)
  %62 = load %struct.SLConn*, %struct.SLConn** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 3), align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 1), align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 1), align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds %struct.SLConn, %struct.SLConn* %62, i64 %65
  store %struct.SLConn* %66, %struct.SLConn** %9, align 8
  %67 = load %struct.SLConn*, %struct.SLConn** %9, align 8
  %68 = getelementptr inbounds %struct.SLConn, %struct.SLConn* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.SLConn*, %struct.SLConn** %9, align 8
  %71 = getelementptr inbounds %struct.SLConn, %struct.SLConn* %70, i32 0, i32 1
  store i32* %69, i32** %71, align 8
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 4), align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 4), align 8
  %74 = sext i32 %72 to i64
  %75 = load %struct.SLConn*, %struct.SLConn** %9, align 8
  %76 = getelementptr inbounds %struct.SLConn, %struct.SLConn* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @sqlite3_mutex_leave(i32* %77)
  %79 = load %struct.SLConn*, %struct.SLConn** %9, align 8
  %80 = call i32 @sqllogOpenlog(%struct.SLConn* %79)
  %81 = load %struct.SLConn*, %struct.SLConn** %9, align 8
  %82 = getelementptr inbounds %struct.SLConn, %struct.SLConn* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %59
  %86 = load %struct.SLConn*, %struct.SLConn** %9, align 8
  %87 = call i32 @sqllogCopydb(%struct.SLConn* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %88

88:                                               ; preds = %85, %59
  br label %89

89:                                               ; preds = %88, %55, %48
  %90 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 2), align 8
  %91 = call i32 @sqlite3_mutex_leave(i32* %90)
  br label %198

92:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %93

93:                                               ; preds = %109, %92
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 1), align 8
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = load %struct.SLConn*, %struct.SLConn** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 3), align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.SLConn, %struct.SLConn* %98, i64 %100
  store %struct.SLConn* %101, %struct.SLConn** %9, align 8
  %102 = load %struct.SLConn*, %struct.SLConn** %9, align 8
  %103 = getelementptr inbounds %struct.SLConn, %struct.SLConn* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = icmp eq i32* %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  br label %112

108:                                              ; preds = %97
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %93

112:                                              ; preds = %107, %93
  %113 = load i32, i32* %8, align 4
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %175

115:                                              ; preds = %112
  %116 = load i32*, i32** %10, align 8
  %117 = call i32 @sqlite3_mutex_enter(i32* %116)
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 1), align 8
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %138

121:                                              ; preds = %115
  %122 = load %struct.SLConn*, %struct.SLConn** %9, align 8
  %123 = getelementptr inbounds %struct.SLConn, %struct.SLConn* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.SLConn*, %struct.SLConn** %9, align 8
  %128 = getelementptr inbounds %struct.SLConn, %struct.SLConn* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @fclose(i64 %129)
  br label %131

131:                                              ; preds = %126, %121
  %132 = load %struct.SLConn*, %struct.SLConn** %9, align 8
  %133 = getelementptr inbounds %struct.SLConn, %struct.SLConn* %132, i32 0, i32 1
  store i32* null, i32** %133, align 8
  %134 = load %struct.SLConn*, %struct.SLConn** %9, align 8
  %135 = getelementptr inbounds %struct.SLConn, %struct.SLConn* %134, i32 0, i32 0
  store i64 0, i64* %135, align 8
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 1), align 8
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 1), align 8
  br label %138

138:                                              ; preds = %131, %115
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 1), align 8
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 2), align 8
  %143 = call i32 @sqlite3_mutex_free(i32* %142)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 2), align 8
  br label %172

144:                                              ; preds = %138
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 1), align 8
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %171

148:                                              ; preds = %144
  %149 = load %struct.SLConn*, %struct.SLConn** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 3), align 8
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 1), align 8
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.SLConn, %struct.SLConn* %149, i64 %151
  %153 = load %struct.SLConn*, %struct.SLConn** %9, align 8
  %154 = ptrtoint %struct.SLConn* %152 to i64
  %155 = ptrtoint %struct.SLConn* %153 to i64
  %156 = sub i64 %154, %155
  %157 = sdiv exact i64 %156, 24
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %148
  %162 = load %struct.SLConn*, %struct.SLConn** %9, align 8
  %163 = load %struct.SLConn*, %struct.SLConn** %9, align 8
  %164 = getelementptr inbounds %struct.SLConn, %struct.SLConn* %163, i64 1
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = mul i64 %166, 24
  %168 = trunc i64 %167 to i32
  %169 = call i32 @memmove(%struct.SLConn* %162, %struct.SLConn* %164, i32 %168)
  br label %170

170:                                              ; preds = %161, %148
  br label %171

171:                                              ; preds = %170, %144
  br label %172

172:                                              ; preds = %171, %141
  %173 = load i32*, i32** %10, align 8
  %174 = call i32 @sqlite3_mutex_leave(i32* %173)
  br label %197

175:                                              ; preds = %112
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 1), align 8
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %196

179:                                              ; preds = %175
  %180 = load %struct.SLConn*, %struct.SLConn** %9, align 8
  %181 = getelementptr inbounds %struct.SLConn, %struct.SLConn* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %196

184:                                              ; preds = %179
  %185 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 2), align 8
  %186 = call i32 @sqlite3_mutex_enter(i32* %185)
  %187 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 0), align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %184
  %190 = load %struct.SLConn*, %struct.SLConn** %9, align 8
  %191 = load i8*, i8** %7, align 8
  %192 = call i32 @testSqllogStmt(%struct.SLConn* %190, i8* %191)
  br label %193

193:                                              ; preds = %189, %184
  %194 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 2), align 8
  %195 = call i32 @sqlite3_mutex_leave(i32* %194)
  br label %196

196:                                              ; preds = %193, %179, %175
  br label %197

197:                                              ; preds = %196, %172
  br label %198

198:                                              ; preds = %197, %89
  ret void
}

declare dso_local i8* @sqlite3_mutex_alloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_enter(i32*) #1

declare dso_local i32 @sqlite3_mutex_leave(i32*) #1

declare dso_local i64 @sqllogTraceDb(i32*) #1

declare dso_local i32 @sqllogOpenlog(%struct.SLConn*) #1

declare dso_local i32 @sqllogCopydb(%struct.SLConn*, i8*, i32) #1

declare dso_local i32 @fclose(i64) #1

declare dso_local i32 @sqlite3_mutex_free(i32*) #1

declare dso_local i32 @memmove(%struct.SLConn*, %struct.SLConn*, i32) #1

declare dso_local i32 @testSqllogStmt(%struct.SLConn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
