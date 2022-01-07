; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_kwallet_read_password_list.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_kwallet_read_password_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i8* }

@.str = private unnamed_addr constant [17 x i8] c"readPasswordList\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"kwallet_read_password_list : vlc_dbus_new_method failed\00", align 1
@DBUS_TYPE_INT32 = common dso_local global i64 0, align 8
@DBUS_TYPE_STRING = common dso_local global i64 0, align 8
@psz_folder = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"kwallet_read_password_list : vlc_dbus_send_message failed\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"kwallet_read_password_list : Message has no arguments\00", align 1
@DBUS_TYPE_ARRAY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"kwallet_read_password_list : Wrong reply type\00", align 1
@DBUS_TYPE_DICT_ENTRY = common dso_local global i64 0, align 8
@DBUS_TYPE_VARIANT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"Wrong type not DBUS_TYPE_DICT_ENTRY\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"First type of Dict-Entry is not a string\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Second type of Dict-Entry is not a variant\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, i8*, i32*)* @kwallet_read_password_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @kwallet_read_password_list(%struct.TYPE_8__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %17, align 8
  store i32 0, i32* %20, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 0, i32* %24, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = call i32* @vlc_dbus_new_method(%struct.TYPE_8__* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32* %26, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = call i32 @msg_Err(%struct.TYPE_8__* %29, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %180

31:                                               ; preds = %3
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @dbus_message_iter_init_append(i32* %32, i32* %11)
  %34 = load i64, i64* @DBUS_TYPE_INT32, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = call i32 @dbus_message_iter_append_basic(i32* %11, i64 %34, i8** %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %31
  %40 = load i64, i64* @DBUS_TYPE_STRING, align 8
  %41 = call i32 @dbus_message_iter_append_basic(i32* %11, i64 %40, i8** @psz_folder)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i64, i64* @DBUS_TYPE_STRING, align 8
  %45 = call i32 @dbus_message_iter_append_basic(i32* %11, i64 %44, i8** %6)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i64, i64* @DBUS_TYPE_STRING, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = call i32 @dbus_message_iter_append_basic(i32* %11, i64 %48, i8** %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47, %43, %39, %31
  br label %180

54:                                               ; preds = %47
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32* @vlc_dbus_send_message(%struct.TYPE_8__* %55, i32* %56)
  store i32* %57, i32** %10, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = call i32 @msg_Err(%struct.TYPE_8__* %60, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %180

62:                                               ; preds = %54
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @dbus_message_iter_init(i32* %63, i32* %11)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = call i32 @msg_Err(%struct.TYPE_8__* %67, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %180

69:                                               ; preds = %62
  %70 = call i64 @dbus_message_iter_get_arg_type(i32* %11)
  %71 = load i64, i64* @DBUS_TYPE_ARRAY, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = call i32 @msg_Err(%struct.TYPE_8__* %74, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %180

76:                                               ; preds = %69
  %77 = call i32 @dbus_message_iter_recurse(i32* %11, i32* %12)
  br label %78

78:                                               ; preds = %99, %76
  %79 = call i64 @dbus_message_iter_get_arg_type(i32* %12)
  %80 = load i64, i64* @DBUS_TYPE_DICT_ENTRY, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %99

83:                                               ; preds = %78
  %84 = call i32 @dbus_message_iter_recurse(i32* %12, i32* %13)
  %85 = call i64 @dbus_message_iter_get_arg_type(i32* %13)
  %86 = load i64, i64* @DBUS_TYPE_STRING, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %99

89:                                               ; preds = %83
  %90 = call i64 @dbus_message_iter_next(i32* %13)
  %91 = call i64 @dbus_message_iter_get_arg_type(i32* %13)
  %92 = load i64, i64* @DBUS_TYPE_VARIANT, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %99

95:                                               ; preds = %89
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %96, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %95, %94, %88, %82
  %100 = call i64 @dbus_message_iter_next(i32* %12)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %78, label %102

102:                                              ; preds = %99
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %180

107:                                              ; preds = %102
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %108, align 4
  %110 = call i32* @calloc(i32 %109, i32 4)
  store i32* %110, i32** %15, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  br label %180

113:                                              ; preds = %107
  %114 = load i32*, i32** %10, align 8
  %115 = call i32 @dbus_message_iter_init(i32* %114, i32* %11)
  %116 = call i32 @dbus_message_iter_recurse(i32* %11, i32* %12)
  br label %117

117:                                              ; preds = %169, %113
  %118 = call i64 @dbus_message_iter_get_arg_type(i32* %12)
  %119 = load i64, i64* @DBUS_TYPE_DICT_ENTRY, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %123 = call i32 @msg_Err(%struct.TYPE_8__* %122, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %169

124:                                              ; preds = %117
  %125 = call i32 @dbus_message_iter_recurse(i32* %12, i32* %13)
  %126 = call i64 @dbus_message_iter_get_arg_type(i32* %13)
  %127 = load i64, i64* @DBUS_TYPE_STRING, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %131 = call i32 @msg_Err(%struct.TYPE_8__* %130, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %169

132:                                              ; preds = %124
  %133 = call i32 @dbus_message_iter_get_basic(i32* %13, i8** %18)
  %134 = call i64 @dbus_message_iter_next(i32* %13)
  %135 = call i64 @dbus_message_iter_get_arg_type(i32* %13)
  %136 = load i64, i64* @DBUS_TYPE_VARIANT, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %140 = call i32 @msg_Err(%struct.TYPE_8__* %139, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %169

141:                                              ; preds = %132
  %142 = call i32 @dbus_message_iter_recurse(i32* %13, i32* %14)
  %143 = call i32 @dbus_message_iter_get_basic(i32* %14, i8** %19)
  %144 = load i8*, i8** %19, align 8
  %145 = call i64 @vlc_b64_decode_binary(i32** %17, i8* %144)
  store i64 %145, i64* %16, align 8
  %146 = load i8*, i8** %18, align 8
  %147 = load i32*, i32** %15, align 8
  %148 = load i32, i32* %20, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = call i64 @key2values(i8* %146, i32* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %141
  br label %180

154:                                              ; preds = %141
  %155 = load i32*, i32** %15, align 8
  %156 = load i32, i32* %20, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32*, i32** %17, align 8
  %160 = load i64, i64* %16, align 8
  %161 = call i64 @vlc_keystore_entry_set_secret(i32* %158, i32* %159, i64 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %154
  br label %180

164:                                              ; preds = %154
  %165 = load i32*, i32** %17, align 8
  %166 = call i32 @free(i32* %165)
  %167 = load i32, i32* %20, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %20, align 4
  br label %169

169:                                              ; preds = %164, %138, %129, %121
  %170 = call i64 @dbus_message_iter_next(i32* %12)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %117, label %172

172:                                              ; preds = %169
  br label %173

173:                                              ; preds = %172
  br label %174

174:                                              ; preds = %173
  %175 = load i32*, i32** %9, align 8
  %176 = call i32 @dbus_message_unref(i32* %175)
  %177 = load i32*, i32** %10, align 8
  %178 = call i32 @dbus_message_unref(i32* %177)
  %179 = load i32*, i32** %15, align 8
  store i32* %179, i32** %4, align 8
  br label %203

180:                                              ; preds = %163, %153, %112, %106, %73, %66, %59, %53, %28
  %181 = load i32*, i32** %17, align 8
  %182 = call i32 @free(i32* %181)
  %183 = load i32*, i32** %7, align 8
  store i32 0, i32* %183, align 4
  %184 = load i32*, i32** %15, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %190

186:                                              ; preds = %180
  %187 = load i32*, i32** %15, align 8
  %188 = load i32, i32* %20, align 4
  %189 = call i32 @vlc_keystore_release_entries(i32* %187, i32 %188)
  br label %190

190:                                              ; preds = %186, %180
  %191 = load i32*, i32** %9, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load i32*, i32** %9, align 8
  %195 = call i32 @dbus_message_unref(i32* %194)
  br label %196

196:                                              ; preds = %193, %190
  %197 = load i32*, i32** %10, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32*, i32** %10, align 8
  %201 = call i32 @dbus_message_unref(i32* %200)
  br label %202

202:                                              ; preds = %199, %196
  store i32* null, i32** %4, align 8
  br label %203

203:                                              ; preds = %202, %174
  %204 = load i32*, i32** %4, align 8
  ret i32* %204
}

declare dso_local i32* @vlc_dbus_new_method(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @dbus_message_iter_init_append(i32*, i32*) #1

declare dso_local i32 @dbus_message_iter_append_basic(i32*, i64, i8**) #1

declare dso_local i32* @vlc_dbus_send_message(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @dbus_message_iter_init(i32*, i32*) #1

declare dso_local i64 @dbus_message_iter_get_arg_type(i32*) #1

declare dso_local i32 @dbus_message_iter_recurse(i32*, i32*) #1

declare dso_local i64 @dbus_message_iter_next(i32*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @dbus_message_iter_get_basic(i32*, i8**) #1

declare dso_local i64 @vlc_b64_decode_binary(i32**, i8*) #1

declare dso_local i64 @key2values(i8*, i32*) #1

declare dso_local i64 @vlc_keystore_entry_set_secret(i32*, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @dbus_message_unref(i32*) #1

declare dso_local i32 @vlc_keystore_release_entries(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
