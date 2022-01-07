; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/twain_32/extr_dsm.c_test_sources.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/twain_32/extr_dsm.c_test_sources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i64 }

@DG_CONTROL = common dso_local global i32 0, align 4
@DAT_IDENTITY = common dso_local global i32 0, align 4
@MSG_GETFIRST = common dso_local global i32 0, align 4
@TWRC_SUCCESS = common dso_local global i64 0, align 8
@TWCC_SUCCESS = common dso_local global i64 0, align 8
@TWRC_FAILURE = common dso_local global i64 0, align 8
@TWCC_NODS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Get first invalid condition code, rc %d, cc %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [109 x i8] c"[Scanner %d|Version %d.%d(%s)|Protocol %d.%d|SupportedGroups 0x%x|Manufacturer %s|Family %s|ProductName %s]\0A\00", align 1
@MSG_GETNEXT = common dso_local global i32 0, align 4
@TWRC_ENDOFLIST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Get next source failed, rc %d, cc %d\0A\00", align 1
@MSG_GETDEFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"Get default invalid condition code, rc %d, cc %d\0A\00", align 1
@winetest_interactive = common dso_local global i64 0, align 8
@MSG_OPENDS = common dso_local global i32 0, align 4
@MSG_CLOSEDS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Close DS Failed, rc %d, cc %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Interactive, so trying userselect\0A\00", align 1
@MSG_USERSELECT = common dso_local global i32 0, align 4
@TWRC_CANCEL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"Userselect failed, rc %d, cc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @test_sources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_sources(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_14__, align 4
  %5 = alloca %struct.TYPE_13__, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 @memset(%struct.TYPE_14__* %4, i32 0, i32 36)
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %9 = load i32, i32* @DG_CONTROL, align 4
  %10 = load i32, i32* @DAT_IDENTITY, align 4
  %11 = load i32, i32* @MSG_GETFIRST, align 4
  %12 = call i64 @pDSM_Entry(%struct.TYPE_14__* %8, i32* null, i32 %9, i32 %10, i32 %11, %struct.TYPE_14__* %4)
  store i64 %12, i64* %3, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = call i32 @get_condition_code(%struct.TYPE_14__* %13, i32* null, %struct.TYPE_13__* %5)
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @TWRC_SUCCESS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TWCC_SUCCESS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %34, label %23

23:                                               ; preds = %18, %1
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @TWRC_FAILURE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TWCC_NODS, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi i1 [ false, %23 ], [ %31, %27 ]
  br label %34

34:                                               ; preds = %32, %18
  %35 = phi i1 [ true, %18 ], [ %33, %32 ]
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %39)
  br label %41

41:                                               ; preds = %86, %34
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* @TWRC_SUCCESS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %93

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %51, i32 %54, i32 %57, i32 %59, i32 %61, i32 %63, i32 %65, i32 %67, i32 %69)
  %71 = call i32 @memset(%struct.TYPE_14__* %4, i32 0, i32 36)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %73 = load i32, i32* @DG_CONTROL, align 4
  %74 = load i32, i32* @DAT_IDENTITY, align 4
  %75 = load i32, i32* @MSG_GETNEXT, align 4
  %76 = call i64 @pDSM_Entry(%struct.TYPE_14__* %72, i32* null, i32 %73, i32 %74, i32 %75, %struct.TYPE_14__* %4)
  store i64 %76, i64* %3, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %78 = call i32 @get_condition_code(%struct.TYPE_14__* %77, i32* null, %struct.TYPE_13__* %5)
  %79 = load i64, i64* %3, align 8
  %80 = load i64, i64* @TWRC_SUCCESS, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %45
  %83 = load i64, i64* %3, align 8
  %84 = load i64, i64* @TWRC_ENDOFLIST, align 8
  %85 = icmp eq i64 %83, %84
  br label %86

86:                                               ; preds = %82, %45
  %87 = phi i1 [ true, %45 ], [ %85, %82 ]
  %88 = zext i1 %87 to i32
  %89 = load i64, i64* %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %89, i64 %91)
  br label %41

93:                                               ; preds = %41
  %94 = call i32 @memset(%struct.TYPE_14__* %4, i32 0, i32 36)
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %96 = load i32, i32* @DG_CONTROL, align 4
  %97 = load i32, i32* @DAT_IDENTITY, align 4
  %98 = load i32, i32* @MSG_GETDEFAULT, align 4
  %99 = call i64 @pDSM_Entry(%struct.TYPE_14__* %95, i32* null, i32 %96, i32 %97, i32 %98, %struct.TYPE_14__* %4)
  store i64 %99, i64* %3, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %101 = call i32 @get_condition_code(%struct.TYPE_14__* %100, i32* null, %struct.TYPE_13__* %5)
  %102 = load i64, i64* %3, align 8
  %103 = load i64, i64* @TWRC_SUCCESS, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %93
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @TWCC_SUCCESS, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %121, label %110

110:                                              ; preds = %105, %93
  %111 = load i64, i64* %3, align 8
  %112 = load i64, i64* @TWRC_FAILURE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @TWCC_NODS, align 8
  %118 = icmp eq i64 %116, %117
  br label %119

119:                                              ; preds = %114, %110
  %120 = phi i1 [ false, %110 ], [ %118, %114 ]
  br label %121

121:                                              ; preds = %119, %105
  %122 = phi i1 [ true, %105 ], [ %120, %119 ]
  %123 = zext i1 %122 to i32
  %124 = load i64, i64* %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @ok(i32 %123, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %124, i64 %126)
  %128 = load i64, i64* %3, align 8
  %129 = load i64, i64* @TWRC_SUCCESS, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %172

131:                                              ; preds = %121
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @TWCC_SUCCESS, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %172

136:                                              ; preds = %131
  %137 = load i64, i64* @winetest_interactive, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %172

139:                                              ; preds = %136
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %141 = load i32, i32* @DG_CONTROL, align 4
  %142 = load i32, i32* @DAT_IDENTITY, align 4
  %143 = load i32, i32* @MSG_OPENDS, align 4
  %144 = call i64 @pDSM_Entry(%struct.TYPE_14__* %140, i32* null, i32 %141, i32 %142, i32 %143, %struct.TYPE_14__* %4)
  store i64 %144, i64* %3, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %146 = call i32 @get_condition_code(%struct.TYPE_14__* %145, i32* null, %struct.TYPE_13__* %5)
  %147 = load i64, i64* %3, align 8
  %148 = load i64, i64* @TWRC_SUCCESS, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %171

150:                                              ; preds = %139
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @TWCC_SUCCESS, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %171

155:                                              ; preds = %150
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %157 = load i32, i32* @DG_CONTROL, align 4
  %158 = load i32, i32* @DAT_IDENTITY, align 4
  %159 = load i32, i32* @MSG_CLOSEDS, align 4
  %160 = call i64 @pDSM_Entry(%struct.TYPE_14__* %156, i32* null, i32 %157, i32 %158, i32 %159, %struct.TYPE_14__* %4)
  store i64 %160, i64* %3, align 8
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %162 = call i32 @get_condition_code(%struct.TYPE_14__* %161, i32* null, %struct.TYPE_13__* %5)
  %163 = load i64, i64* %3, align 8
  %164 = load i64, i64* @TWRC_SUCCESS, align 8
  %165 = icmp eq i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = load i64, i64* %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @ok(i32 %166, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %167, i64 %169)
  br label %171

171:                                              ; preds = %155, %150, %139
  br label %172

172:                                              ; preds = %171, %136, %131, %121
  %173 = load i64, i64* @winetest_interactive, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %243

175:                                              ; preds = %172
  %176 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %177 = call i32 @memset(%struct.TYPE_14__* %4, i32 0, i32 36)
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %179 = load i32, i32* @DG_CONTROL, align 4
  %180 = load i32, i32* @DAT_IDENTITY, align 4
  %181 = load i32, i32* @MSG_USERSELECT, align 4
  %182 = call i64 @pDSM_Entry(%struct.TYPE_14__* %178, i32* null, i32 %179, i32 %180, i32 %181, %struct.TYPE_14__* %4)
  store i64 %182, i64* %3, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %184 = call i32 @get_condition_code(%struct.TYPE_14__* %183, i32* null, %struct.TYPE_13__* %5)
  %185 = load i64, i64* %3, align 8
  %186 = load i64, i64* @TWRC_SUCCESS, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %192, label %188

188:                                              ; preds = %175
  %189 = load i64, i64* %3, align 8
  %190 = load i64, i64* @TWRC_CANCEL, align 8
  %191 = icmp eq i64 %189, %190
  br label %192

192:                                              ; preds = %188, %175
  %193 = phi i1 [ true, %175 ], [ %191, %188 ]
  %194 = zext i1 %193 to i32
  %195 = load i64, i64* %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @ok(i32 %194, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %195, i64 %197)
  %199 = load i64, i64* %3, align 8
  %200 = load i64, i64* @TWRC_SUCCESS, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %242

202:                                              ; preds = %192
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @TWCC_SUCCESS, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %242

207:                                              ; preds = %202
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %209 = load i32, i32* @DG_CONTROL, align 4
  %210 = load i32, i32* @DAT_IDENTITY, align 4
  %211 = load i32, i32* @MSG_OPENDS, align 4
  %212 = call i64 @pDSM_Entry(%struct.TYPE_14__* %208, i32* null, i32 %209, i32 %210, i32 %211, %struct.TYPE_14__* %4)
  store i64 %212, i64* %3, align 8
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %214 = call i32 @get_condition_code(%struct.TYPE_14__* %213, i32* null, %struct.TYPE_13__* %5)
  %215 = load i64, i64* %3, align 8
  %216 = load i64, i64* @TWRC_SUCCESS, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %241

218:                                              ; preds = %207
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @TWCC_SUCCESS, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %241

223:                                              ; preds = %218
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %225 = call i32 @test_single_source(%struct.TYPE_14__* %224, %struct.TYPE_14__* %4)
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %227 = load i32, i32* @DG_CONTROL, align 4
  %228 = load i32, i32* @DAT_IDENTITY, align 4
  %229 = load i32, i32* @MSG_CLOSEDS, align 4
  %230 = call i64 @pDSM_Entry(%struct.TYPE_14__* %226, i32* null, i32 %227, i32 %228, i32 %229, %struct.TYPE_14__* %4)
  store i64 %230, i64* %3, align 8
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %232 = call i32 @get_condition_code(%struct.TYPE_14__* %231, i32* null, %struct.TYPE_13__* %5)
  %233 = load i64, i64* %3, align 8
  %234 = load i64, i64* @TWRC_SUCCESS, align 8
  %235 = icmp eq i64 %233, %234
  %236 = zext i1 %235 to i32
  %237 = load i64, i64* %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = call i32 @ok(i32 %236, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %237, i64 %239)
  br label %241

241:                                              ; preds = %223, %218, %207
  br label %242

242:                                              ; preds = %241, %202, %192
  br label %243

243:                                              ; preds = %242, %172
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @pDSM_Entry(%struct.TYPE_14__*, i32*, i32, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @get_condition_code(%struct.TYPE_14__*, i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @ok(i32, i8*, i64, i64) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i32 @test_single_source(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
