; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_pager.c_sqlite3PagerSetJournalMode.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_pager.c_sqlite3PagerSetJournalMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i64, i32, i32, i32, i64, i32 }

@PAGER_JOURNALMODE_DELETE = common dso_local global i32 0, align 4
@PAGER_JOURNALMODE_TRUNCATE = common dso_local global i32 0, align 4
@PAGER_JOURNALMODE_PERSIST = common dso_local global i32 0, align 4
@PAGER_JOURNALMODE_OFF = common dso_local global i32 0, align 4
@PAGER_JOURNALMODE_WAL = common dso_local global i32 0, align 4
@PAGER_JOURNALMODE_MEMORY = common dso_local global i32 0, align 4
@MEMDB = common dso_local global i64 0, align 8
@PAGER_ERROR = common dso_local global i32 0, align 4
@RESERVED_LOCK = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@PAGER_OPEN = common dso_local global i32 0, align 4
@PAGER_READER = common dso_local global i32 0, align 4
@SHARED_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3PagerSetJournalMode(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @PAGER_JOURNALMODE_DELETE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %34, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PAGER_JOURNALMODE_TRUNCATE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %34, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @PAGER_JOURNALMODE_PERSIST, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @PAGER_JOURNALMODE_OFF, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @PAGER_JOURNALMODE_WAL, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @PAGER_JOURNALMODE_MEMORY, align 4
  %33 = icmp eq i32 %31, %32
  br label %34

34:                                               ; preds = %30, %26, %22, %18, %14, %2
  %35 = phi i1 [ true, %26 ], [ true, %22 ], [ true, %18 ], [ true, %14 ], [ true, %2 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @PAGER_JOURNALMODE_WAL, align 4
  %45 = icmp ne i32 %43, %44
  br label %46

46:                                               ; preds = %42, %34
  %47 = phi i1 [ true, %34 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i64, i64* @MEMDB, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @PAGER_JOURNALMODE_MEMORY, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @PAGER_JOURNALMODE_OFF, align 4
  %59 = icmp eq i32 %57, %58
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i1 [ true, %52 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @PAGER_JOURNALMODE_MEMORY, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @PAGER_JOURNALMODE_OFF, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %67, %60
  br label %74

74:                                               ; preds = %73, %46
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %252

78:                                               ; preds = %74
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @PAGER_ERROR, align 4
  %83 = icmp ne i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @PAGER_JOURNALMODE_TRUNCATE, align 4
  %90 = and i32 %89, 5
  %91 = icmp eq i32 %90, 1
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load i32, i32* @PAGER_JOURNALMODE_PERSIST, align 4
  %95 = and i32 %94, 5
  %96 = icmp eq i32 %95, 1
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load i32, i32* @PAGER_JOURNALMODE_DELETE, align 4
  %100 = and i32 %99, 5
  %101 = icmp eq i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load i32, i32* @PAGER_JOURNALMODE_MEMORY, align 4
  %105 = and i32 %104, 5
  %106 = icmp eq i32 %105, 4
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load i32, i32* @PAGER_JOURNALMODE_OFF, align 4
  %110 = and i32 %109, 5
  %111 = icmp eq i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load i32, i32* @PAGER_JOURNALMODE_WAL, align 4
  %115 = and i32 %114, 5
  %116 = icmp eq i32 %115, 5
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @isOpen(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %78
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 7
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br label %129

129:                                              ; preds = %124, %78
  %130 = phi i1 [ true, %78 ], [ %128, %124 ]
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 7
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %241, label %137

137:                                              ; preds = %129
  %138 = load i32, i32* %5, align 4
  %139 = and i32 %138, 5
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %241

141:                                              ; preds = %137
  %142 = load i32, i32* %4, align 4
  %143 = and i32 %142, 1
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %241

145:                                              ; preds = %141
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @sqlite3OsClose(i32 %148)
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @RESERVED_LOCK, align 8
  %154 = icmp sge i64 %152, %153
  br i1 %154, label %155, label %163

155:                                              ; preds = %145
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @sqlite3OsDelete(i32 %158, i32 %161, i32 0)
  br label %240

163:                                              ; preds = %145
  %164 = load i32, i32* @SQLITE_OK, align 4
  store i32 %164, i32* %6, align 4
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* @PAGER_OPEN, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %175, label %171

171:                                              ; preds = %163
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* @PAGER_READER, align 4
  %174 = icmp eq i32 %172, %173
  br label %175

175:                                              ; preds = %171, %163
  %176 = phi i1 [ true, %163 ], [ %174, %171 ]
  %177 = zext i1 %176 to i32
  %178 = call i32 @assert(i32 %177)
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* @PAGER_OPEN, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %175
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %184 = call i32 @sqlite3PagerSharedLock(%struct.TYPE_7__* %183)
  store i32 %184, i32* %6, align 4
  br label %185

185:                                              ; preds = %182, %175
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @PAGER_READER, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %200

191:                                              ; preds = %185
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* @SQLITE_OK, align 4
  %194 = icmp eq i32 %192, %193
  %195 = zext i1 %194 to i32
  %196 = call i32 @assert(i32 %195)
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %198 = load i64, i64* @RESERVED_LOCK, align 8
  %199 = call i32 @pagerLockDb(%struct.TYPE_7__* %197, i64 %198)
  store i32 %199, i32* %6, align 4
  br label %200

200:                                              ; preds = %191, %185
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* @SQLITE_OK, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %212

204:                                              ; preds = %200
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @sqlite3OsDelete(i32 %207, i32 %210, i32 0)
  br label %212

212:                                              ; preds = %204, %200
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* @SQLITE_OK, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %224

216:                                              ; preds = %212
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* @PAGER_READER, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %216
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %222 = load i32, i32* @SHARED_LOCK, align 4
  %223 = call i32 @pagerUnlockDb(%struct.TYPE_7__* %221, i32 %222)
  br label %232

224:                                              ; preds = %216, %212
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* @PAGER_OPEN, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %224
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %230 = call i32 @pager_unlock(%struct.TYPE_7__* %229)
  br label %231

231:                                              ; preds = %228, %224
  br label %232

232:                                              ; preds = %231, %220
  %233 = load i32, i32* %7, align 4
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = icmp eq i32 %233, %236
  %238 = zext i1 %237 to i32
  %239 = call i32 @assert(i32 %238)
  br label %240

240:                                              ; preds = %232, %155
  br label %251

241:                                              ; preds = %141, %137, %129
  %242 = load i32, i32* %4, align 4
  %243 = load i32, i32* @PAGER_JOURNALMODE_OFF, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %250

245:                                              ; preds = %241
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @sqlite3OsClose(i32 %248)
  br label %250

250:                                              ; preds = %245, %241
  br label %251

251:                                              ; preds = %250, %240
  br label %252

252:                                              ; preds = %251, %74
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  ret i32 %255
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isOpen(i32) #1

declare dso_local i32 @sqlite3OsClose(i32) #1

declare dso_local i32 @sqlite3OsDelete(i32, i32, i32) #1

declare dso_local i32 @sqlite3PagerSharedLock(%struct.TYPE_7__*) #1

declare dso_local i32 @pagerLockDb(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @pagerUnlockDb(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pager_unlock(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
