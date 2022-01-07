; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_allow_usage.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_allow_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_4__ = type { i64, i64, i8* }

@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"show this help message and exit\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"set permission locally\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"set permission for descents\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"set permission for user\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-g\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"set permission for group\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"set permission for everyone\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"set create time permission\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"define permission set\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"remove permissions recursively\00", align 1
@ZFS_NUM_PROPS = common dso_local global i32 0, align 4
@stdout = common dso_local global i32* null, align 8
@stderr = common dso_local global i32* null, align 8
@.str.18 = private unnamed_addr constant [16 x i8] c"%-16s %-14s\09%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"Usage: %s\0A\00", align 1
@HELP_UNALLOW = common dso_local global i32 0, align 4
@HELP_ALLOW = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"  %-10s  %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"\0AThe following permissions are supported:\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"TYPE\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"NOTES\00", align 1
@ZFS_NUM_DELEG_NOTES = common dso_local global i32 0, align 4
@zfs_deleg_perm_tbl = common dso_local global %struct.TYPE_5__* null, align 8
@B_TRUE = common dso_local global i64 0, align 8
@PROP_READONLY = common dso_local global i64 0, align 8
@prop_cmp = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"\0Azfs: error: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i8*)* @allow_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allow_usage(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [18 x i8*], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %24 = getelementptr inbounds [18 x i8*], [18 x i8*]* %7, i64 0, i64 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %25, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %27, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i8* %29, i8** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %30, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i8* %32, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %33, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  store i8* %35, i8** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %34, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %36, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  store i8* %38, i8** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %39, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  store i8* %41, i8** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %42, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  store i8* %44, i8** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8** %45, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  store i8* %47, i8** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8** %48, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  store i8* %50, i8** %49, align 8
  store i64 18, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sub i64 %51, 2
  store i64 %52, i64* %9, align 8
  %53 = load i32, i32* @ZFS_NUM_PROPS, align 4
  %54 = zext i32 %53 to i64
  %55 = call i8* @llvm.stacksave()
  store i8* %55, i8** %10, align 8
  %56 = alloca i8*, i64 %54, align 16
  store i64 %54, i64* %11, align 8
  store i64 0, i64* %13, align 8
  %57 = load i64, i64* %5, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %3
  %60 = load i32*, i32** @stdout, align 8
  br label %63

61:                                               ; preds = %3
  %62 = load i32*, i32** @stderr, align 8
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32* [ %60, %59 ], [ %62, %61 ]
  store i32* %64, i32** %14, align 8
  %65 = call %struct.TYPE_4__* (...) @zfs_prop_get_table()
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %15, align 8
  %66 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  store i8* %66, i8** %16, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  %69 = load i64, i64* %4, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* @HELP_UNALLOW, align 4
  br label %75

73:                                               ; preds = %63
  %74 = load i32, i32* @HELP_ALLOW, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = call i8* @get_usage(i32 %76)
  %78 = call i32 (i32*, i8*, ...) @fprintf(i32* %67, i8* %68, i8* %77)
  %79 = load i32*, i32** %14, align 8
  %80 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %79, i8* %80)
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %109, %75
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %4, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i64, i64* %8, align 8
  br label %91

89:                                               ; preds = %82
  %90 = load i64, i64* %9, align 8
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i64 [ %88, %87 ], [ %90, %89 ]
  %93 = icmp ult i64 %84, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %91
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [18 x i8*], [18 x i8*]* %7, i64 0, i64 %96
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %17, align 8
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [18 x i8*], [18 x i8*]* %7, i64 0, i64 %101
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %18, align 8
  %104 = load i32*, i32** %14, align 8
  %105 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  %106 = load i8*, i8** %17, align 8
  %107 = load i8*, i8** %18, align 8
  %108 = call i32 (i32*, i8*, ...) @fprintf(i32* %104, i8* %105, i8* %106, i8* %107)
  br label %109

109:                                              ; preds = %94
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 2
  store i32 %111, i32* %12, align 4
  br label %82

112:                                              ; preds = %91
  %113 = load i32*, i32** %14, align 8
  %114 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i64 0, i64 0))
  %115 = call i32 (i32*, i8*, ...) @fprintf(i32* %113, i8* %114)
  %116 = load i32*, i32** %14, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  %119 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %120 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0))
  %121 = call i32 (i32*, i8*, ...) @fprintf(i32* %116, i8* %117, i8* %118, i8* %119, i8* %120)
  store i32 0, i32* %12, align 4
  br label %122

122:                                              ; preds = %149, %112
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @ZFS_NUM_DELEG_NOTES, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %152

126:                                              ; preds = %122
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** @zfs_deleg_perm_tbl, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  store i8* %132, i8** %19, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** @zfs_deleg_perm_tbl, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %20, align 4
  %139 = load i32, i32* %20, align 4
  %140 = call i8* @deleg_perm_type(i32 %139)
  store i8* %140, i8** %21, align 8
  %141 = load i32, i32* %20, align 4
  %142 = call i8* @deleg_perm_comment(i32 %141)
  store i8* %142, i8** %22, align 8
  %143 = load i32*, i32** %14, align 8
  %144 = load i8*, i8** %16, align 8
  %145 = load i8*, i8** %19, align 8
  %146 = load i8*, i8** %21, align 8
  %147 = load i8*, i8** %22, align 8
  %148 = call i32 (i32*, i8*, ...) @fprintf(i32* %143, i8* %144, i8* %145, i8* %146, i8* %147)
  br label %149

149:                                              ; preds = %126
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %12, align 4
  br label %122

152:                                              ; preds = %122
  store i32 0, i32* %12, align 4
  br label %153

153:                                              ; preds = %182, %152
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* @ZFS_NUM_PROPS, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %185

157:                                              ; preds = %153
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 %160
  store %struct.TYPE_4__* %161, %struct.TYPE_4__** %23, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @B_TRUE, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %157
  br label %182

168:                                              ; preds = %157
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @PROP_READONLY, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  br label %182

175:                                              ; preds = %168
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 2
  %178 = load i8*, i8** %177, align 8
  %179 = load i64, i64* %13, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %13, align 8
  %181 = getelementptr inbounds i8*, i8** %56, i64 %179
  store i8* %178, i8** %181, align 8
  br label %182

182:                                              ; preds = %175, %174, %167
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %12, align 4
  br label %153

185:                                              ; preds = %153
  %186 = load i64, i64* %13, align 8
  %187 = getelementptr inbounds i8*, i8** %56, i64 %186
  store i8* null, i8** %187, align 8
  %188 = load i64, i64* %13, align 8
  %189 = load i32, i32* @prop_cmp, align 4
  %190 = call i32 @qsort(i8** %56, i64 %188, i32 8, i32 %189)
  store i32 0, i32* %12, align 4
  br label %191

191:                                              ; preds = %205, %185
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = load i64, i64* %13, align 8
  %195 = icmp ult i64 %193, %194
  br i1 %195, label %196, label %208

196:                                              ; preds = %191
  %197 = load i32*, i32** %14, align 8
  %198 = load i8*, i8** %16, align 8
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %56, i64 %200
  %202 = load i8*, i8** %201, align 8
  %203 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0))
  %204 = call i32 (i32*, i8*, ...) @fprintf(i32* %197, i8* %198, i8* %202, i8* %203, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i64 0, i64 0))
  br label %205

205:                                              ; preds = %196
  %206 = load i32, i32* %12, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %12, align 4
  br label %191

208:                                              ; preds = %191
  %209 = load i8*, i8** %6, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %216

211:                                              ; preds = %208
  %212 = load i32*, i32** %14, align 8
  %213 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0))
  %214 = load i8*, i8** %6, align 8
  %215 = call i32 (i32*, i8*, ...) @fprintf(i32* %212, i8* %213, i8* %214)
  br label %216

216:                                              ; preds = %211, %208
  %217 = load i64, i64* %5, align 8
  %218 = icmp ne i64 %217, 0
  %219 = zext i1 %218 to i64
  %220 = select i1 %218, i32 0, i32 2
  %221 = call i32 @exit(i32 %220) #4
  unreachable
}

declare dso_local i8* @gettext(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_4__* @zfs_prop_get_table(...) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @get_usage(i32) #1

declare dso_local i8* @deleg_perm_type(i32) #1

declare dso_local i8* @deleg_perm_comment(i32) #1

declare dso_local i32 @qsort(i8**, i64, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
