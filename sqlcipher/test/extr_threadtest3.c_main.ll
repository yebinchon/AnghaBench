; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ThreadTest = type { void (i32)*, i8*, i32 }

@walthread1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"walthread1\00", align 1
@walthread2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"walthread2\00", align 1
@walthread3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"walthread3\00", align 1
@walthread4 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"walthread4\00", align 1
@walthread5 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"walthread5\00", align 1
@cgt_pager_1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"cgt_pager_1\00", align 1
@dynamic_triggers = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"dynamic_triggers\00", align 1
@checkpoint_starvation_1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"checkpoint_starvation_1\00", align 1
@checkpoint_starvation_2 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"checkpoint_starvation_2\00", align 1
@create_drop_index_1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"create_drop_index_1\00", align 1
@lookaside1 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"lookaside1\00", align 1
@vacuum1 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"vacuum1\00", align 1
@stress1 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"stress1\00", align 1
@stress2 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"stress2\00", align 1
@main.substArgv = internal global [3 x i8*] [i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* null], align 16
@.str.14 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@SQLITE_CONFIG_MULTITHREAD = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"-multiplexor\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [40 x i8] c"Failed to install multiplexor VFS (%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Running %s for %d seconds...\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [27 x i8] c"%d errors out of %d tests\0A\00", align 1
@nGlobalErr = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [52 x i8] c"Usage: %s [-multiplexor] [testname|testprefix*]...\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Available tests are:\0A\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"   %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [14 x %struct.ThreadTest], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = getelementptr inbounds [14 x %struct.ThreadTest], [14 x %struct.ThreadTest]* %6, i64 0, i64 0
  %14 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %13, i32 0, i32 0
  %15 = load i32, i32* @walthread1, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to void (i32)*
  store void (i32)* %17, void (i32)** %14, align 8
  %18 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %13, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %13, i32 0, i32 2
  store i32 20000, i32* %19, align 8
  %20 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %13, i64 1
  %21 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %20, i32 0, i32 0
  %22 = load i32, i32* @walthread2, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to void (i32)*
  store void (i32)* %24, void (i32)** %21, align 8
  %25 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %20, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %25, align 8
  %26 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %20, i32 0, i32 2
  store i32 20000, i32* %26, align 8
  %27 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %20, i64 1
  %28 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %27, i32 0, i32 0
  %29 = load i32, i32* @walthread3, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to void (i32)*
  store void (i32)* %31, void (i32)** %28, align 8
  %32 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %27, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %32, align 8
  %33 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %27, i32 0, i32 2
  store i32 20000, i32* %33, align 8
  %34 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %27, i64 1
  %35 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %34, i32 0, i32 0
  %36 = load i32, i32* @walthread4, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to void (i32)*
  store void (i32)* %38, void (i32)** %35, align 8
  %39 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %34, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %39, align 8
  %40 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %34, i32 0, i32 2
  store i32 20000, i32* %40, align 8
  %41 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %34, i64 1
  %42 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %41, i32 0, i32 0
  %43 = load i32, i32* @walthread5, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to void (i32)*
  store void (i32)* %45, void (i32)** %42, align 8
  %46 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %41, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %46, align 8
  %47 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %41, i32 0, i32 2
  store i32 1000, i32* %47, align 8
  %48 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %41, i64 1
  %49 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %48, i32 0, i32 0
  %50 = load i32, i32* @cgt_pager_1, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to void (i32)*
  store void (i32)* %52, void (i32)** %49, align 8
  %53 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %48, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %53, align 8
  %54 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %48, i32 0, i32 2
  store i32 0, i32* %54, align 8
  %55 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %48, i64 1
  %56 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %55, i32 0, i32 0
  %57 = load i32, i32* @dynamic_triggers, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to void (i32)*
  store void (i32)* %59, void (i32)** %56, align 8
  %60 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %55, i32 0, i32 1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8** %60, align 8
  %61 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %55, i32 0, i32 2
  store i32 20000, i32* %61, align 8
  %62 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %55, i64 1
  %63 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %62, i32 0, i32 0
  %64 = load i32, i32* @checkpoint_starvation_1, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to void (i32)*
  store void (i32)* %66, void (i32)** %63, align 8
  %67 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %62, i32 0, i32 1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8** %67, align 8
  %68 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %62, i32 0, i32 2
  store i32 10000, i32* %68, align 8
  %69 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %62, i64 1
  %70 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %69, i32 0, i32 0
  %71 = load i32, i32* @checkpoint_starvation_2, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to void (i32)*
  store void (i32)* %73, void (i32)** %70, align 8
  %74 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %69, i32 0, i32 1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8** %74, align 8
  %75 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %69, i32 0, i32 2
  store i32 10000, i32* %75, align 8
  %76 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %69, i64 1
  %77 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %76, i32 0, i32 0
  %78 = load i32, i32* @create_drop_index_1, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to void (i32)*
  store void (i32)* %80, void (i32)** %77, align 8
  %81 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %76, i32 0, i32 1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8** %81, align 8
  %82 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %76, i32 0, i32 2
  store i32 10000, i32* %82, align 8
  %83 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %76, i64 1
  %84 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %83, i32 0, i32 0
  %85 = load i32, i32* @lookaside1, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to void (i32)*
  store void (i32)* %87, void (i32)** %84, align 8
  %88 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %83, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8** %88, align 8
  %89 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %83, i32 0, i32 2
  store i32 10000, i32* %89, align 8
  %90 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %83, i64 1
  %91 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %90, i32 0, i32 0
  %92 = load i32, i32* @vacuum1, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to void (i32)*
  store void (i32)* %94, void (i32)** %91, align 8
  %95 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %90, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %95, align 8
  %96 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %90, i32 0, i32 2
  store i32 10000, i32* %96, align 8
  %97 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %90, i64 1
  %98 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %97, i32 0, i32 0
  %99 = load i32, i32* @stress1, align 4
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to void (i32)*
  store void (i32)* %101, void (i32)** %98, align 8
  %102 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %97, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %102, align 8
  %103 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %97, i32 0, i32 2
  store i32 10000, i32* %103, align 8
  %104 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %97, i64 1
  %105 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %104, i32 0, i32 0
  %106 = load i32, i32* @stress2, align 4
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to void (i32)*
  store void (i32)* %108, void (i32)** %105, align 8
  %109 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %104, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %109, align 8
  %110 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %104, i32 0, i32 2
  store i32 60000, i32* %110, align 8
  store i32 0, i32* %9, align 4
  %111 = load i32, i32* @SQLITE_CONFIG_MULTITHREAD, align 4
  %112 = call i32 @sqlite3_config(i32 %111)
  %113 = load i32, i32* %4, align 4
  %114 = icmp slt i32 %113, 2
  br i1 %114, label %115, label %116

115:                                              ; preds = %2
  store i32 2, i32* %4, align 4
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @main.substArgv, i64 0, i64 0), i8*** %5, align 8
  br label %116

116:                                              ; preds = %115, %2
  store i32 1, i32* %8, align 4
  br label %117

117:                                              ; preds = %173, %116
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %176

121:                                              ; preds = %117
  %122 = load i8**, i8*** %5, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  %126 = load i8*, i8** %125, align 8
  store i8* %126, i8** %10, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 0
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 45
  br i1 %131, label %132, label %148

132:                                              ; preds = %121
  %133 = load i8*, i8** %10, align 8
  %134 = call i64 @sqlite3_stricmp(i8* %133, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %132
  %137 = call i32 @sqlite3_multiplex_initialize(i32 0, i32 1)
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @SQLITE_OK, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load i32, i32* @stderr, align 4
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @fprintf(i32 %142, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i32 %143)
  store i32 253, i32* %3, align 4
  br label %275

145:                                              ; preds = %136
  br label %147

146:                                              ; preds = %132
  br label %254

147:                                              ; preds = %145
  br label %173

148:                                              ; preds = %121
  store i32 0, i32* %7, align 4
  br label %149

149:                                              ; preds = %164, %148
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = icmp ult i64 %151, 14
  br i1 %152, label %153, label %167

153:                                              ; preds = %149
  %154 = load i8*, i8** %10, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [14 x %struct.ThreadTest], [14 x %struct.ThreadTest]* %6, i64 0, i64 %156
  %158 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = call i64 @sqlite3_strglob(i8* %154, i8* %159)
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  br label %167

163:                                              ; preds = %153
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %7, align 4
  br label %149

167:                                              ; preds = %162, %149
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = icmp uge i64 %169, 14
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  br label %254

172:                                              ; preds = %167
  br label %173

173:                                              ; preds = %172, %147
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  br label %117

176:                                              ; preds = %117
  store i32 1, i32* %8, align 4
  br label %177

177:                                              ; preds = %239, %176
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* %4, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %242

181:                                              ; preds = %177
  %182 = load i8**, i8*** %5, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 0
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 45
  br i1 %190, label %191, label %192

191:                                              ; preds = %181
  br label %239

192:                                              ; preds = %181
  store i32 0, i32* %7, align 4
  br label %193

193:                                              ; preds = %235, %192
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = icmp ult i64 %195, 14
  br i1 %196, label %197, label %238

197:                                              ; preds = %193
  %198 = load i32, i32* %7, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [14 x %struct.ThreadTest], [14 x %struct.ThreadTest]* %6, i64 0, i64 %199
  %201 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %200, i32 0, i32 1
  %202 = load i8*, i8** %201, align 8
  store i8* %202, i8** %12, align 8
  %203 = load i8**, i8*** %5, align 8
  %204 = load i32, i32* %8, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8*, i8** %203, i64 %205
  %207 = load i8*, i8** %206, align 8
  %208 = load i8*, i8** %12, align 8
  %209 = call i64 @sqlite3_strglob(i8* %207, i8* %208)
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %234

211:                                              ; preds = %197
  %212 = load i8*, i8** %12, align 8
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [14 x %struct.ThreadTest], [14 x %struct.ThreadTest]* %6, i64 0, i64 %214
  %216 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = sdiv i32 %217, 1000
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i8* %212, i32 %218)
  %220 = load i32, i32* @stdout, align 4
  %221 = call i32 @fflush(i32 %220)
  %222 = load i32, i32* %7, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [14 x %struct.ThreadTest], [14 x %struct.ThreadTest]* %6, i64 0, i64 %223
  %225 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %224, i32 0, i32 0
  %226 = load void (i32)*, void (i32)** %225, align 8
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [14 x %struct.ThreadTest], [14 x %struct.ThreadTest]* %6, i64 0, i64 %228
  %230 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  call void %226(i32 %231)
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %9, align 4
  br label %234

234:                                              ; preds = %211, %197
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %7, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %7, align 4
  br label %193

238:                                              ; preds = %193
  br label %239

239:                                              ; preds = %238, %191
  %240 = load i32, i32* %8, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %8, align 4
  br label %177

242:                                              ; preds = %177
  %243 = load i32, i32* %9, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %242
  br label %254

246:                                              ; preds = %242
  %247 = load i32, i32* @nGlobalErr, align 4
  %248 = load i32, i32* %9, align 4
  %249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i32 %247, i32 %248)
  %250 = load i32, i32* @nGlobalErr, align 4
  %251 = icmp sgt i32 %250, 0
  %252 = zext i1 %251 to i64
  %253 = select i1 %251, i32 255, i32 0
  store i32 %253, i32* %3, align 4
  br label %275

254:                                              ; preds = %245, %171, %146
  %255 = load i8**, i8*** %5, align 8
  %256 = getelementptr inbounds i8*, i8** %255, i64 0
  %257 = load i8*, i8** %256, align 8
  %258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.19, i64 0, i64 0), i8* %257)
  %259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %260

260:                                              ; preds = %271, %254
  %261 = load i32, i32* %7, align 4
  %262 = sext i32 %261 to i64
  %263 = icmp ult i64 %262, 14
  br i1 %263, label %264, label %274

264:                                              ; preds = %260
  %265 = load i32, i32* %7, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [14 x %struct.ThreadTest], [14 x %struct.ThreadTest]* %6, i64 0, i64 %266
  %268 = getelementptr inbounds %struct.ThreadTest, %struct.ThreadTest* %267, i32 0, i32 1
  %269 = load i8*, i8** %268, align 8
  %270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* %269)
  br label %271

271:                                              ; preds = %264
  %272 = load i32, i32* %7, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %7, align 4
  br label %260

274:                                              ; preds = %260
  store i32 254, i32* %3, align 4
  br label %275

275:                                              ; preds = %274, %246, %141
  %276 = load i32, i32* %3, align 4
  ret i32 %276
}

declare dso_local i32 @sqlite3_config(i32) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i32 @sqlite3_multiplex_initialize(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i64 @sqlite3_strglob(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
